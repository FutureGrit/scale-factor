import 'package:flutter/material.dart';
import 'package:scale_factor/models/row.dart';
import 'package:scale_factor/ui/widgets/table_data_cell.dart';
import 'package:scale_factor/utils/shared_styles.dart';

class IosPlatformTable extends StatelessWidget {
  IosPlatformTable({@required this.value});

  final double value;
  final List header = ['Scale', 'PT', 'PX'];

  @override
  Widget build(BuildContext context) {
    List<CustomRow> customRows = [
      // mdpi
      CustomRow(
        scaleType: '1x',
        pt: '$value',
        px: convertValue(factor: 1.0),
      ),

      // xhdpi
      CustomRow(
        scaleType: '2x',
        pt: '$value',
        px: convertValue(factor: 2.0),
      ),

      // xxhdpi
      CustomRow(
        scaleType: '3x',
        pt: '$value',
        px: convertValue(factor: 3.0),
      ),
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
            //columnWidths: {0: FractionColumnWidth(0.29)},
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
      ),
      TableDataCell(value: row.pt, textStyle: textStyle),
      TableDataCell(value: row.px, textStyle: textStyle),
    ]);
  }
}
