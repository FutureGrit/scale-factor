import 'package:flutter/material.dart';
import 'package:scale_factor/enums/platform.dart';

class PlatformModel {
  PlatformModel({
    @required this.platform,
    @required this.tableHeaders,
    @required this.scale,
    @required this.factor,
    @required this.units,
    @required this.defaultBaselineIndex,
    @required this.defaultUnitIndex,
  });

  Platform platform;
  List<String> tableHeaders;
  List<String> scale;
  List<double> factor;
  List<String> units;
  int defaultBaselineIndex;
  int defaultUnitIndex;
}
