import 'package:flutter/material.dart';
import 'package:scale_factor/constants/app_colors.dart';
import 'package:scale_factor/utils/shared_styles.dart';

import 'dropdown_input.dart';
import 'package:scale_factor/utils/ui_utils.dart';

class BaselineValueUnit extends StatefulWidget {
  @override
  _BaselineValueUnitState createState() => _BaselineValueUnitState();
}

class _BaselineValueUnitState extends State<BaselineValueUnit> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // BASELINE label and Dropdown
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' BASELINE',
                style: labelTextStyle,
              ),
              verticalSpaceSmall,
              DropdownInput(
                items: ['ldpi', 'mdpi', 'hdpi', 'xhdpi', 'xxhdpi', 'xxxhdpi'],
                defaultValue: 'mdpi',
              )
            ],
          ),
        ),

        horizontalSpaceMedium,

        // VALUE label and TextView
        Expanded(
          flex: 4,
          child: Column(
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
          ),
        ),

        horizontalSpaceMedium,

        // UNIT label and Dropdown
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' UNIT',
                style: labelTextStyle,
              ),
              verticalSpaceSmall,
              DropdownInput(
                items: ['PX', 'DP', 'PT'],
                defaultValue: 'PX',
              ),
            ],
          ),
        )
      ],
    );
  }
}
