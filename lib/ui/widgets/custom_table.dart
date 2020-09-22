import 'package:flutter/material.dart';
import 'package:scale_factor/utils/shared_styles.dart';

class CustomTable extends StatelessWidget {
  final iconSize = 40.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
                  Text('Scale', style: tableHeaderStyle),
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
              TableRow(children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    'ldpi',
                    style: tableTextStyle,
                  ),
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
                  '18.75',
                  style: tableTextStyle,
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
