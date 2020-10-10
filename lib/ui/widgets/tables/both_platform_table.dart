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
        '${platform.value}',
        ignorePTCalculation.contains(i) ? '' : '${platform.value}',
        convertValue(
            value: platform.value, factor: platform.selectedPlatform.factor[i])
      ]);
    }
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
    return (value * factor).toStringAsFixed(2);
  }
}
