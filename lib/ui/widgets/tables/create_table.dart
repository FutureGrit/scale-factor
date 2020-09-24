import 'package:flutter/material.dart';

import 'package:scale_factor/utils/shared_styles.dart';
import 'package:scale_factor/constants/app_colors.dart';
import 'package:scale_factor/utils/ui_utils.dart';
import 'table_data_cell.dart';

class CreateTable extends StatelessWidget {
  CreateTable({this.headers, this.rows});

  final List headers;
  final List<List> rows;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      margin: EdgeInsets.only(top: marginLarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Table(
            border: TableBorder(
              verticalInside: BorderSide(
                  width: tableBorderSize,
                  color: tableBorderColor,
                  style: BorderStyle.solid),
            ),
            // If columns are more then 3 then we have to manage the width of
            // first column so it doesn't wrap the text
            columnWidths: {
              0: headers.length > 3
                  ? FractionColumnWidth(0.29)
                  : FlexColumnWidth(1)
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              // Table headers columns
              TableRow(
                children: headers
                    .map((columnTitle) => TableDataCell(
                          value: columnTitle,
                          alignment: Alignment.center,
                          textStyle: tableHeaderStyle,
                        ))
                    .toList(),
              ),

              // Header separator line
              TableRow(children: [
                for (int i = 0; i < headers.length; i++)
                  Divider(
                    color: tableBorderColor,
                    height: tableBorderSize,
                  )
              ]),

              // Table data rows
              for (int i = 0; i < rows.length; i++)
                getRow(row: rows[i], currentIndex: i),
            ],
          ),
        ],
      ),
    );
  }

  TableRow getRow({@required List row, int currentIndex}) {
    // TODO: service for setting selectedIndex value from BASELINE dropdown
    int selectedIndex = 1;
    TextStyle textStyle = tableTextStyle;

    if (currentIndex == selectedIndex) {
      textStyle = tableTextStyle.copyWith(color: Colors.red);
    }

    return TableRow(children: [
      for (int i = 0; i < row.length; i++)
        TableDataCell(
            value: row[i], textStyle: textStyle, alignment: Alignment.center)
    ]);
    //TODO - Future Enhancement: customize alignment of first column in the Platform.Both table
  }
}
