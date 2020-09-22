import 'package:flutter/material.dart';
import 'package:scale_factor/constants/app_colors.dart';
import 'package:scale_factor/utils/shared_styles.dart';

class OutputTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataTable(
            dataRowHeight: 36,
            horizontalMargin: 0,
            dividerThickness: 0,
            //columnSpacing: 0,
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Scale',
                  style: tableHeaderStyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'DP',
                  style: tableHeaderStyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'PT',
                  style: tableHeaderStyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'PX',
                  style: tableHeaderStyle,
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                selected: true,
                cells: <DataCell>[
                  DataCell(
                    Text(
                      'ldpi',
                      style: tableTextStyle,
                    ),
                  ),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '18.75',
                    style: tableTextStyle,
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text(
                    'mdpi - 1x',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text(
                    'hdpi',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '37.50',
                    style: tableTextStyle,
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text(
                    'xhdpi - 2x',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '50.00',
                    style: tableTextStyle,
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text(
                    'xxhdpi - 3x',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '75.00',
                    style: tableTextStyle,
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text(
                    'xxxhdpi',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '100.00',
                    style: tableTextStyle,
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text(
                    'xxxhdpi',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '25.00',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '',
                    style: tableTextStyle,
                  )),
                  DataCell(Text(
                    '100.00',
                    style: tableTextStyle,
                  )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
