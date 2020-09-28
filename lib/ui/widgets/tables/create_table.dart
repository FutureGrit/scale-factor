import 'package:flutter/material.dart';

import 'package:scale_factor/ui/themes/shared_styles.dart';
import 'package:scale_factor/utils/ui_utils.dart';
import 'table_data_cell.dart';

class CreateTable extends StatelessWidget {
  CreateTable({this.headers, this.rows});

  final List headers;
  final List<List> rows;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Table(
            border: TableBorder(
              verticalInside: BorderSide(
                  width: tableBorderSize,
                  color: Theme.of(context).dividerColor,
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
                          textStyle: Theme.of(context).textTheme.bodyText1,
                        ))
                    .toList(),
              ),

              // Header separator line
              TableRow(children: [
                for (int i = 0; i < headers.length; i++)
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: tableBorderSize,
                    height: tableBorderSize,
                  )
              ]),

              // Table data rows
              for (int i = 0; i < rows.length; i++)
                getRow(row: rows[i], currentIndex: i, context: context),
            ],
          ),
        ],
      ),
    );
  }

  TableRow getRow(
      {@required List row, int currentIndex, @required BuildContext context}) {
    // TODO: Remove context from function
    // TODO: service for setting selectedIndex value from BASELINE dropdown
    int selectedIndex = 1;
    TextStyle textStyle = Theme.of(context).textTheme.bodyText2;

    if (currentIndex == selectedIndex) {
      textStyle =
          tableTextStyle.copyWith(color: Theme.of(context).selectedRowColor);
    }

    return TableRow(children: [
      for (int i = 0; i < row.length; i++)
        TableDataCell(
            value: row[i], textStyle: textStyle, alignment: Alignment.center)
    ]);
    //TODO - Future Enhancement: customize alignment of first column in the Platform.Both table
  }
}
