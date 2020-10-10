import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/constants/platform_constants.dart';
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
    // // TODO: Create constants for header list
    //
    // List header = ['Scale', 'DP', 'PT', 'PX'];
    // TODO: if we set column in const in that case if user add's a new column then they have modify
    //  all tables [both_platform_table.dart, android_platform_table.dart, ios_platform_table.dart]

    List<List> rows = [];
    for (int i = 0; i < platform.selectedPlatform.scale.length; i++) {
      rows.add([
        platform.selectedPlatform.scale[i],
        '${platform.valueInDPI}',
        ignorePTCalculation.contains(i) ? '__' : '${platform.valueInDPI}',
        // TODO: Improve implementation for calculating PX
        // To set entered value, at selected scale PX column from VALUE text
        // field else we will calculate. This is done to avoid any change in the
        // input VALUE at selected scale PX column
        i == platform.getSelectedBaselineIndex()
            ? platform.value.toStringAsFixed(2)
            : platform.convertDpiValueToPixel(
                factor: platform.selectedPlatform.factor[i])
      ]);
    }

    // TODO: if selected unit is not PX then disable [Baseline] dropdown and
    //  set selectedBaseline to the default value but the functionality will be the same

    // If unit is PX then first calculate DP and PT of selected Baseline.
    // Then set it in front of scale or in the DP and PT column
    // Now we need to calculate value converted values for both higher scale and lower scale

    // TODO 0: Calculate set DP and PT as soon as baseline is changed

    // TODO 1: Implement value from [Value] text field and update table
    // TODO 2: Implement Unit dropdown functionality.
    // TODO 3: Create Header constants for all type of platform
    // TODO 4: Crate single file for all platform table rows and remove ios_platform_table.dart and android_platform_table.dart
    return CreateTable(
      headers: tableHeaders,
      rows: rows,
    );
  }

  // TODO: Move below logic to view model
  String convertValue({@required double value, @required double factor}) {
    // if(selectedUnit == 'PX') {
    //  // TODO: calculate DP PT value based on selected baseline
    // valueOfDP = value / selectedBaselineFactor;
    // // TODO: user value of DP in DP and PT columns
    // } else {
    //
    //
    // }

    return (value * factor).toStringAsFixed(2);
  }
}
