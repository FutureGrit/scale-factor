import 'package:flutter/material.dart';

class Methods {
  static double getWidth(BuildContext context, {double divideBy = 1}) =>
      MediaQuery.of(context).size.shortestSide / divideBy;

  static double getHeight(BuildContext context, {double divideBy = 1}) =>
      MediaQuery.of(context).size.longestSide / divideBy;
}
