import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/utils/decimal_text_input_formatter.dart';
import 'package:scale_factor/utils/methods.dart';
import 'package:scale_factor/utils/ui_utils.dart';
import 'package:scale_factor/viewmodels/value_view_model.dart';

class ValueInput extends StatefulWidget {
  ValueInput({@required this.defaultValue});

  final String defaultValue;

  @override
  _ValueInputState createState() => _ValueInputState();
}

class _ValueInputState extends State<ValueInput> {
  TextEditingController controller;
  GlobalKey _key = GlobalKey();
  double verticalPadding = kPaddingTiny;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_updateVerticalPadding);

    // controller for setting default value for TextField
    controller = TextEditingController(text: '${widget.defaultValue}');
    Provider.of<ValueViewModel>(context, listen: false)
        .setDefaultValue(widget.defaultValue);
  }

  /// To update the [verticalPadding] which will be used to manipulate the
  /// height of value text field.
  _updateVerticalPadding(_) {
    final RenderBox renderBox = _key.currentContext.findRenderObject();
    final valueTextHeight = renderBox.size.height - (verticalPadding * 2);
    setState(() {
      verticalPadding =
          ((Methods.getHeight(divideBy: 13) - valueTextHeight) / 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' VALUE',
          style: Theme.of(context).textTheme.headline6,
        ),
        kVerticalSpaceSmall,
        TextField(
          key: _key,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: verticalPadding, horizontal: kPaddingNormal),
            isDense: true,
          ),
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp(r'[^\d|\.]')),
            DecimalTextInputFormatter(
                maxNumberBeforeDecimalRange: 4, decimalRange: 2),
          ],
          onChanged: (value) {
            Provider.of<ValueViewModel>(context, listen: false).setValue(value);
          },
          style: Theme.of(context).textTheme.headline3,
          controller: controller,
          maxLines: 1,
          autofocus: false,
          autocorrect: false,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          enableInteractiveSelection: false,
        ),
      ],
    );
  }
}
