import 'package:flutter/material.dart';

import 'dropdown_input.dart';
import 'package:scale_factor/ui/widgets/value_input.dart';
import 'package:scale_factor/utils/ui_utils.dart';

class BaselineValueUnit extends StatelessWidget {
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
          child: DropdownInput(
            label: ' BASELINE',
            items: ['ldpi', 'mdpi', 'hdpi', 'xhdpi', 'xxhdpi', 'xxxhdpi'],
            defaultValue: 'mdpi',
          ),
        ),

        horizontalSpaceMedium,

        // VALUE label and TextView
        Expanded(
          flex: 4,
          child: ValueInput(),
        ),

        horizontalSpaceMedium,

        // UNIT label and Dropdown
        Expanded(
          flex: 3,
          child: DropdownInput(
            label: ' UNIT',
            items: ['PX', 'DP', 'PT'],
            defaultValue: 'PX',
          ),
        )
      ],
    );
  }
}
