import 'package:flutter/material.dart';
import 'package:scale_factor/models/row.dart';
import 'package:scale_factor/utils/shared_styles.dart';

class BothPlatformTable extends StatelessWidget {
  BothPlatformTable({@required this.value});

  final double value;
  final List header = ['Scale', 'DP', 'PT', 'PX'];

  // Require 'value' parameter to calculate

  @override
  Widget build(BuildContext context) {
    List<CustomRow> customRows = [
      // ldpi
      CustomRow(
        scaleType: 'ldpi',
        dp: '$value',
        pt: '',
        px: convertValue(factor: .75),
      ),

      // mdpi
      CustomRow(
        scaleType: 'mdpi - 1x',
        dp: '$value',
        pt: '$value',
        px: convertValue(factor: 1.0),
      ),

      // hdpi
      CustomRow(
        scaleType: 'hdpi',
        dp: '$value',
        pt: '',
        px: convertValue(factor: 1.50),
      ),

      // xhdpi
      CustomRow(
        scaleType: 'xhdpi - 2x',
        dp: '$value',
        pt: '$value',
        px: convertValue(factor: 2.0),
      ),

      // xxhdpi
      CustomRow(
        scaleType: 'xxhdpi - 3x',
        dp: '$value',
        pt: '$value',
        px: convertValue(factor: 3.0),
      ),

      // xxxhdpi
      CustomRow(
        scaleType: 'xxxhdpi',
        dp: '$value',
        pt: '',
        px: convertValue(factor: 4.0),
      )
    ];

    return Container(
      //color: Colors.yellow,
      margin: EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataTable(
            horizontalMargin: 4,
            columns: header
                .map((columnTitle) => DataColumn(
                        label: Text(
                      columnTitle,
                      style: tableHeaderStyle,
                    )))
                .toList(),
            rows: customRows
                .map(
                  (row) => DataRow(
                    //TODO: selected:
                    cells: [
                      DataCell(Text(
                        row.scaleType,
                        style: tableTextStyle,
                      )),
                      DataCell(Text(
                        row.dp,
                        style: tableTextStyle,
                      )),
                      DataCell(Text(
                        row.pt,
                        style: tableTextStyle,
                      )),
                      DataCell(Text(
                        row.px,
                        style: tableTextStyle,
                      )),
                    ],
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  String convertValue({@required double factor}) {
    return (value * factor).toStringAsFixed(2);
  }
}
