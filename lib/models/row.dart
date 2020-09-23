import 'package:flutter/material.dart';

class CustomRow {
  String scaleType;
  String dp;
  String pt;
  String px;
  //TODO: isSelected for highlight row text
  bool isSelected;

  CustomRow({@required this.scaleType, this.dp, this.pt, this.px});
}
