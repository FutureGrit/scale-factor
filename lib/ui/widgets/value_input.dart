import 'package:flutter/material.dart';

import 'package:scale_factor/constants/app_colors.dart';
import 'package:scale_factor/utils/shared_styles.dart';
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
          style: labelTextStyle,
        ),
        verticalSpaceSmall,
        TextField(
          onTap: () {
            //TODO: Update table
          },
          //TODO: set length to 6
          style: inputFieldTextStyle,
          maxLines: 1,
          autofocus: false,
          autocorrect: false,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            isDense: false,
            contentPadding: EdgeInsets.all(14.0),
            fillColor: textBackgroundColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadiusSmall),
              borderSide: BorderSide(
                color: borderColor,
                width: borderWidthNormal,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadiusSmall),
              borderSide: BorderSide(
                color: borderColor,
                width: borderWidthNormal,
              ),
            ),
            hintText: '24',
          ),
        ),
      ],
    );
  }
}
