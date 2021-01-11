import 'package:flutter/material.dart';

class Methods {
  // Set [context] as soon as first UI builds
  static BuildContext context;

  static double getWidth({double divideBy = 1}) =>
      MediaQuery.of(context).size.shortestSide / divideBy;

  static double getHeight({double divideBy = 1}) =>
      MediaQuery.of(context).size.longestSide / divideBy;
}
