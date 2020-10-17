import 'package:flutter/material.dart';

class TableDataCell extends StatelessWidget {
  TableDataCell(
      {@required this.value,
      this.textStyle,
      this.alignment = Alignment.center,
      this.padding = 12.0});

  final String value;
  final Alignment alignment;
  final double padding;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      alignment: alignment,
      child: Text(
        value,
        style: textStyle,
      ),
    );
  }
}
