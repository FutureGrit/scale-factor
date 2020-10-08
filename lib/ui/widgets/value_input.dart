import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:scale_factor/utils/decimal_text_input_formatter.dart';
import 'package:scale_factor/utils/ui_utils.dart';

class ValueInput extends StatefulWidget {
  @override
  _ValueInputState createState() => _ValueInputState();
}

class _ValueInputState extends State<ValueInput> {
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
            // TODO: if the new value is not same as old only then set it in the service
            print('TextField: $value');
            //Provider.of<HomeViewService>(context, listen: false).setValue(value)
          },
          //TODO: Update table
          style: Theme.of(context).textTheme.headline3,
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
