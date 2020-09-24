import 'package:flutter/material.dart';
import 'package:scale_factor/utils/shared_styles.dart';

// TODO: Should I move this class as a widget in table

class TableDataCell extends StatelessWidget {
  TableDataCell(
      {@required this.value,
      this.textStyle,
      this.alignment = Alignment.center});

  final String value;
  final Alignment alignment;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.all(10.0),
      alignment: alignment,
      child: Text(
        value,
        style: textStyle,
      ),
    );
  }
}
// TODO: Text Alignment customization parameter
// TODO: Padding parameter
// TODO: background color parameter
// TODO:
