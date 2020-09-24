import 'package:flutter/material.dart';

import 'create_table.dart';

class AndroidPlatformTable extends StatelessWidget {
  AndroidPlatformTable({@required this.value});

  final double value;
  // TODO: Change value based on "UNIT" and "BASELINE"

  @override
  Widget build(BuildContext context) {
    List header = ['Scale', 'DP', 'PX'];
    List<List> rows = [
      //--Scale -- DP ---------- PX ------------------
      ['ldpi', '$value', convertToPixel(factor: .75)],

      ['mdpi', '$value', convertToPixel(factor: 1.00)],

      ['hdpi', '$value', convertToPixel(factor: 1.50)],

      ['xhdpi', '$value', convertToPixel(factor: 2.00)],

      ['xxhdpi', '$value', convertToPixel(factor: 3.00)],

      ['xxxhdpi', '$value', convertToPixel(factor: 4.00)],
    ];
    return CreateTable(
      headers: header,
      rows: rows,
    );
  }

  String convertToPixel({@required double factor}) {
    return (value * factor).toStringAsFixed(2);
  }
}
