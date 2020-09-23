import 'package:flutter/material.dart';
import 'package:scale_factor/utils/shared_styles.dart';

class TableDataCell extends StatelessWidget {
  TableDataCell({@required this.value, this.alignment = Alignment.center});

  final String value;
  final Alignment alignment;
  //final bool isSelected

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      alignment: alignment,
      child: Text(
        value,
        style: tableTextStyle,
      ),
    );
  }
}
// TODO: Text Alignment customization parameter
// TODO: Padding parameter
// TODO: background color parameter
// TODO:
