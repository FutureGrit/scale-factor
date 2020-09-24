import 'package:flutter/material.dart';

import 'create_table.dart';

class BothPlatformTable extends StatelessWidget {
  BothPlatformTable({@required this.value});

  final double value;
  // TODO: Change value based on "UNIT" and "BASELINE"

  @override
  Widget build(BuildContext context) {
    List header = ['Scale', 'DP', 'PT', 'PX'];
    List<List> rows = [
      // -- Scale -- DP -- PT ----- PX ----------
      ['ldpi', '$value', '', convertValue(factor: .75)],

      ['mdpi - 1x', '$value', '$value', convertValue(factor: 1.00)],

      ['hdpi', '$value', '', convertValue(factor: 1.50)],

      ['xhdpi - 2x', '$value', '$value', convertValue(factor: 2.00)],

      ['xxhdpi - 3x', '$value', '$value', convertValue(factor: 3.00)],

      ['xxxhdpi', '$value', '', convertValue(factor: 4.00)],
    ];
    return CreateTable(
      headers: header,
      rows: rows,
    );
  }

  String convertValue({@required double factor}) {
    return (value * factor).toStringAsFixed(2);
  }
}
