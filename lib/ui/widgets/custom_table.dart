import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_factor/ui/widgets/table_data_cell.dart';
import 'package:scale_factor/utils/shared_styles.dart';

class CustomTable extends StatelessWidget {
  final iconSize = 40.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Table(
            border: TableBorder(
              verticalInside: BorderSide(
                  width: 1, color: Colors.blue, style: BorderStyle.solid),
            ),
            columnWidths: {0: FractionColumnWidth(0.26)},
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  Center(child: Text('Scale', style: tableHeaderStyle)),
                  Text('DP', style: tableHeaderStyle),
                  Text('PT', style: tableHeaderStyle),
                  Text('PX', style: tableHeaderStyle)
                ],
              ),

              // Dividers
              TableRow(children: [
                Divider(
                  height: 1,
                  color: Colors.blue,
                ),
                Divider(
                  height: 1,
                  color: Colors.blue,
                ),
                Divider(
                  height: 1,
                  color: Colors.blue,
                ),
                Divider(
                  height: 1,
                  color: Colors.blue,
                ),
              ]),

              // ldpi
              TableRow(
                  decoration: 'ONE' == 'ONE'
                      ? BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(5))
                      : null,
                  children: [
                    TableDataCell(
                      value: 'ldpi6',
                      alignment: Alignment.centerLeft,
                    ),
                    TableDataCell(
                      value: '25.00',
                    ),
                    TableDataCell(
                      value: '',
                    ),
                    TableDataCell(
                      value: '18.75',
                    ),
                  ]),

              // mdpi
              TableRow(children: [
                Text(
                  'mdpi - 1x',
                  style: tableTextStyle,
                ),
                Text(
                  '25.00',
                  style: tableTextStyle,
                ),
                Text(
                  '25.00',
                  style: tableTextStyle,
                ),
                Text(
                  '25.00',
                  style: tableTextStyle,
                ),
              ]),

              // hdpi
              TableRow(children: [
                Text(
                  'hdpi',
                  style: tableTextStyle,
                ),
                Text(
                  '25.00',
                  style: tableTextStyle,
                ),
                Text(
                  '',
                  style: tableTextStyle,
                ),
                Text(
                  '37.50',
                  style: tableTextStyle,
                ),
              ]),

              // xhdpi
              TableRow(children: [
                Text(
                  'xhdpi - 2x',
                  style: tableTextStyle,
                ),
                Text(
                  '25.00',
                  style: tableTextStyle,
                ),
                Text(
                  '25.00',
                  style: tableTextStyle,
                ),
                Text(
                  '50.00',
                  style: tableTextStyle,
                ),
              ]),

              // xxhdpi
              TableRow(children: [
                Text(
                  'xxhdpi - 3x',
                  style: tableTextStyle,
                ),
                Text(
                  '25.00',
                  style: tableTextStyle,
                ),
                Text(
                  '25.00',
                  style: tableTextStyle,
                ),
                Text(
                  '75.00',
                  style: tableTextStyle,
                ),
              ]),

              // xxxhdpi
              TableRow(children: [
                Text(
                  'xxxhdpi',
                  style: tableTextStyle,
                ),
                Text(
                  '25.00',
                  style: tableTextStyle,
                ),
                Text(
                  '',
                  style: tableTextStyle,
                ),
                Text(
                  '100.00',
                  style: tableTextStyle,
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
//TODO: Set Default vertical alignment middle
// TODO: Use Sliver List in landscape mode
