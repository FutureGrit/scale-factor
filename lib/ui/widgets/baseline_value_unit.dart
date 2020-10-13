import 'package:flutter/material.dart';

import 'package:scale_factor/ui/widgets/baseline_dropdown.dart';
import 'package:scale_factor/ui/widgets/unit_dropdown.dart';
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
        Expanded(flex: 5, child: BaselineDropdown()),

        kHorizontalSpaceMedium,

        // VALUE label and TextView
        Expanded(flex: 4, child: ValueInput(defaultValue: 20.00)),

        kHorizontalSpaceMedium,

        // UNIT label and Dropdown
        Expanded(flex: 3, child: UnitDropdown())
      ],
    );
  }
}
