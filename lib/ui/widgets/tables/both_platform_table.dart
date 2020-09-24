import 'package:flutter/material.dart';
import 'package:scale_factor/enums/platform.dart';
import 'package:scale_factor/models/row.dart';
import 'package:scale_factor/ui/widgets/table_data_cell.dart';
import 'package:scale_factor/utils/shared_styles.dart';

class BothPlatformTable extends StatelessWidget {
  BothPlatformTable({@required this.value});

  final double value;
  final List header = ['Scale', 'DP', 'PT', 'PX'];

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
      margin: EdgeInsets.only(top: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Table(
            border: TableBorder(
              verticalInside: BorderSide(
                  // TODO: Remove hard coded border color
                  width: 1,
                  color: Color(0x59BDBDBD),
                  style: BorderStyle.solid),
            ),
            // TODO: Column width need to be changed for each type of platform
            columnWidths: {0: FractionColumnWidth(0.29)},
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              // Table headers columns
              TableRow(
                children: header
                    .map((columnTitle) => TableDataCell(
                          value: columnTitle,
                          alignment: Alignment.center,
                          textStyle: tableHeaderStyle,
                        ))
                    .toList(),
              ),

              // Header separator line
              TableRow(children: [
                for (int i = 0; i < header.length; i++)
                  Divider(
                    color: Color(0x59BDBDBD),
                    // TODO: const for hard coded height
                    height: 2,
                  )
              ]),

              // Table data rows
              for (int i = 0; i < customRows.length; i++)
                getRow(row: customRows[i], currentIndex: i),
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
      TableDataCell(
        value: row.scaleType,
        textStyle: textStyle,
        alignment: Alignment.centerLeft,
      ),
      TableDataCell(value: row.dp, textStyle: textStyle),
      TableDataCell(value: row.pt, textStyle: textStyle),
      TableDataCell(value: row.px, textStyle: textStyle),
    ]);
  }
}
