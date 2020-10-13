import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/services/home_view_service.dart';
import 'package:scale_factor/utils/decimal_text_input_formatter.dart';
import 'package:scale_factor/utils/ui_utils.dart';

class ValueInput extends StatefulWidget {
  ValueInput({@required this.defaultValue});

  final double defaultValue;

  @override
  _ValueInputState createState() => _ValueInputState();
}

class _ValueInputState extends State<ValueInput> {
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    // controller for setting default value for TextField
    controller = TextEditingController(text: '${widget.defaultValue}');
    Provider.of<HomeViewService>(context, listen: false)
        .setDefaultValue(widget.defaultValue);
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
          // TODO: Set default text field value
          // TODO: Remove . from the entered value if their is no digit after decimal
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp(r'[^\d|\.]')),
            DecimalTextInputFormatter(
                maxNumberBeforeDecimalRange: 4, decimalRange: 2),
          ],
          onChanged: (value) {
            Provider.of<HomeViewService>(context, listen: false)
                .setValue(value);
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
