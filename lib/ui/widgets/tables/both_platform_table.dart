import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/constants/platform_constants.dart';
import 'package:scale_factor/enums/platform.dart';
import 'package:scale_factor/services/home_view_service.dart';
import 'create_table.dart';

class BothPlatformTable extends StatelessWidget {
  BothPlatformTable({@required this.value});

  final double value;
  // TODO: Change value based on "UNIT" and "BASELINE"

  @override
  Widget build(BuildContext context) {
    HomeViewService platform =
        Provider.of<HomeViewService>(context, listen: false);
    List<List> rows = [];

    if (platform.selectedPlatform.platform == Platform.Both) {
      for (int i = 0; i < platform.selectedPlatform.scale.length; i++) {
        rows.add([
          platform.selectedPlatform.scale[i], // Scale
          '${platform.valueInDPI}', // DP
          //if (platform.selectedPlatform.platform == Platform.Android)
          ignorePTCalculation.contains(i)
              ? '__'
              : '${platform.valueInDPI}', // PT
          // TODO: Improve implementation for calculating PX
          // To set entered value, at selected scale PX column from VALUE text
          // field else we will calculate. This is done to avoid any change in the
          // input VALUE at selected scale PX column
          i == platform.getSelectedBaselineIndex() // PX
              ? platform.value.toStringAsFixed(2)
              : platform.convertDpiValueToPixel(
                  factor: platform.selectedPlatform.factor[i])
        ]);
      }
    } else {
      for (int i = 0; i < platform.selectedPlatform.scale.length; i++) {
        rows.add([
          platform.selectedPlatform.scale[i], // Scale
          '${platform.valueInDPI}', // DP or PT
          // TODO: Improve implementation for calculating PX
          // To set entered value, at selected scale PX column from VALUE text
          // field else we will calculate. This is done to avoid any change in the
          // input VALUE at selected scale PX column
          i == platform.getSelectedBaselineIndex() // PX
              ? platform.value.toStringAsFixed(2)
              : platform.convertDpiValueToPixel(
                  factor: platform.selectedPlatform.factor[i])
        ]);
      }
    }

    // TODO: if selected unit is not PX then disable [Baseline] dropdown and

    // TODO 0: Calculate set DP and PT as soon as baseline is changed

    // TODO 1: Implement value from [Value] text field and update table
    // TODO 2: Implement Unit dropdown functionality.
    // TODO 3: Create Header constants for all type of platform
    // TODO 4: Crate single file for all platform table rows and remove ios_platform_table.dart and android_platform_table.dart
    return CreateTable(
      headers: platform.selectedPlatform.tableHeaders,
      rows: rows,
    );
  }
}
