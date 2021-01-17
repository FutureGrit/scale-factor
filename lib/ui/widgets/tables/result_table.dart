import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/constants/platform_constants.dart';
import 'package:scale_factor/enums/platform.dart';
import 'package:scale_factor/viewmodels/table_view_model.dart';
import 'create_table.dart';

class ResultTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TableViewModel>(builder: (context, model, child) {
      List<List> rows = [];

      if (model.selectedPlatform.platform == Platform.Both) {
        for (int i = 0; i < model.selectedPlatform.scale.length; i++) {
          rows.add([
            model.selectedPlatform.scale[i], // Scale
            '${model.valueInDPI}', // DP
            ignorePTCalculation.contains(i) ? '' : '${model.valueInDPI}', // PT

            // To set entered value, at selected scale PX column from VALUE text
            // field else we will calculate. This is done to avoid any change in the
            // input VALUE at selected scale PX column
            i == model.getSelectedBaselineIndex // PX
                ? model.value.toStringAsFixed(2)
                : model.convertDpiValueToPixel(
                    factor: model.selectedPlatform.factor[i])
          ]);
        }
      } else {
        for (int i = 0; i < model.selectedPlatform.scale.length; i++) {
          rows.add([
            model.selectedPlatform.scale[i], // Scale
            '${model.valueInDPI}', // DP or PT

            // To set entered value, at selected scale PX column from VALUE text
            // field else we will calculate. This is done to avoid any change in the
            // input VALUE at selected scale PX column
            i == model.getSelectedBaselineIndex // PX
                ? model.value.toStringAsFixed(2)
                : model.convertDpiValueToPixel(
                    factor: model.selectedPlatform.factor[i])
          ]);
        }
      }
      return CreateTable(
        headers: model.selectedPlatform.tableHeaders,
        rows: rows,
      );
    });
  }
}
