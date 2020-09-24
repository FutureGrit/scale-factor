import 'package:flutter/material.dart';

import 'create_table.dart';

class IosPlatformTable extends StatelessWidget {
  IosPlatformTable({@required this.value});

  final double value;
  // TODO: Change value based on "UNIT" and "BASELINE"

  @override
  Widget build(BuildContext context) {
    List header = ['Scale', 'PT', 'PX'];
    List<List> rows = [
      //--Scale -- PT ---------- PX ------------------
      ['1x', '$value', convertToPixel(factor: 1.00)],

      ['2x', '$value', convertToPixel(factor: 2.00)],

      ['3x', '$value', convertToPixel(factor: 3.00)],
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
