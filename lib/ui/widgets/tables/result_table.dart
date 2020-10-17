import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/constants/platform_constants.dart';
import 'package:scale_factor/enums/platform.dart';
import 'package:scale_factor/services/home_view_service.dart';
import 'create_table.dart';

class ResultTable extends StatelessWidget {
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
          ignorePTCalculation.contains(i) ? '' : '${platform.valueInDPI}', // PT

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

    return CreateTable(
      headers: platform.selectedPlatform.tableHeaders,
      rows: rows,
    );
  }
}
