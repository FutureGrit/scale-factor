import 'package:scale_factor/enums/platform.dart';
import 'package:scale_factor/models/platform_model.dart';

final List<PlatformModel> allPlatforms = [
  PlatformModel(
    platform: Platform.Both,
    tableHeaders: ['Scale', 'DP', 'PT', 'PX'],
    scale: [
      'ldpi',
      'mdpi - 1x',
      'hdpi',
      'xhdpi - 2x',
      'xxhdpi - 3x',
      'xxxhdpi'
    ],
    factor: [.75, 1.00, 1.50, 2.00, 3.00, 4.00],
    units: ['PX', 'DP', 'PT'],
    defaultBaselineIndex: 1,
    defaultUnitIndex: 0,
  ),
  PlatformModel(
    platform: Platform.Android,
    tableHeaders: ['Scale', 'DP', 'PX'],
    scale: ['ldpi', 'mdpi', 'hdpi', 'xhdpi', 'xxhdpi', 'xxxhdpi'],
    factor: [.75, 1.00, 1.50, 2.00, 3.00, 4.00],
    units: ['PX', 'DP'],
    defaultBaselineIndex: 1,
    defaultUnitIndex: 0,
  ),
  PlatformModel(
    platform: Platform.iOS,
    tableHeaders: ['Scale', 'PT', 'PX'],
    scale: ['1x', '2x', '3x'],
    factor: [1.00, 2.00, 3.00],
    units: ['PX', 'PT'],
    defaultBaselineIndex: 0,
    defaultUnitIndex: 0,
  )
];
