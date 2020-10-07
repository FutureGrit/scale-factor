import 'package:flutter/material.dart';
import 'package:scale_factor/enums/platform.dart';

class PlatformModel {
  PlatformModel(
      {@required this.platform,
      @required this.scale,
      @required this.units,
      @required this.defaultBaselineIndex,
      @required this.defaultUnitIndex});

  Platform platform;
  List<String> scale;
  List<String> units;
  int defaultBaselineIndex;
  int defaultUnitIndex;
}
