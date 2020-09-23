// TODO: Create table for android only: remove PT and
// update rows first cell text(remove 1x, 2x and 3x)

import 'package:flutter/material.dart';
import 'package:scale_factor/models/row.dart';
import 'package:scale_factor/ui/widgets/table_data_cell.dart';
import 'package:scale_factor/utils/shared_styles.dart';

class AndroidPlatformTable extends StatelessWidget {
  AndroidPlatformTable({@required this.value});

  final double value;
  final List header = ['Scale', 'DP', 'PT', 'PX'];

  @override
  Widget build(BuildContext context) {
    int selectedRow = 1;
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
          Table(
            border: TableBorder(
              verticalInside: BorderSide(
                  width: 1, color: Colors.blue, style: BorderStyle.solid),
            ),
            columnWidths: {0: FractionColumnWidth(0.26)},
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              // Table headers
              TableRow(
                children: header
                    .map((columnTitle) => Text(
                          columnTitle,
                          style: tableHeaderStyle,
                        ))
                    .toList(),
              ),

              for (int i = 0; i < customRows.length; i++)
                getRow(row: customRows[i], currentIndex: i),
              // TableRow(children: [
              //   Text(customRows[i].scaleType),
              //   Text(customRows[i].dp),
              //   Text(customRows[i].pt),
              //   Text(customRows[i].px),
              //]),

              // Row create type 2
              // for (CustomRow row in customRows)
              //   TableRow(children: [
              //     Text(row.scaleType),
              //     Text(row.dp),
              //     Text(row.pt),
              //     Text(row.px),
              //   ]),
              //
              // // Row create type 3
              // // Table Rows
              // ...customRows
              //     .map(
              //       (row) => TableRow(
              //         //TODO: selected:
              //         children: [
              //           TableDataCell(
              //             value: row.scaleType,
              //             alignment: Alignment.centerLeft,
              //           ),
              //           //Text(row.scaleType, style: tableTextStyle),
              //           Text(row.dp, style: tableTextStyle),
              //           Text(row.pt, style: tableTextStyle),
              //           Text(row.px, style: tableTextStyle),
              //         ],
              //       ),
              //     )
              //     .toList(),
            ],
          ),
        ],
      ),
    );
  }

  String convertValue({@required double factor}) {
    return (value * factor).toStringAsFixed(2);
  }

  TableRow getRow({@required CustomRow row, int currentIndex = 0}) {
    int selectedIndex = 1;
    TextStyle textStyle = tableTextStyle;

    if (currentIndex == selectedIndex) {
      textStyle = tableTextStyle.copyWith(color: Colors.red);
    }
    return TableRow(children: [
      Text(row.scaleType, style: textStyle),
      Text(row.dp, style: textStyle),
      Text(row.pt, style: textStyle),
      Text(
        row.px,
        style: textStyle,
      ),
    ]);
  }
}
