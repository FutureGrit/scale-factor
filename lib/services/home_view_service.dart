// TODO: This class will be responsible to manage common shared variables like:
// selectedPlatform, selectedBaseline enteredValue and selectedUnit.

import 'package:flutter/material.dart';
import 'package:scale_factor/enums/platform.dart';
import 'package:scale_factor/services/platform_model.dart';

class HomeViewService extends ChangeNotifier {
  HomeViewService() {
    initialize();
  }

  List<bool> isSelected = [true, false, false];

  List<PlatformModel> _allPlatforms = [
    PlatformModel(
        platform: Platform.Both,
        scale: [
          'ldpi',
          'mdpi - 1x',
          'hdpi',
          'xhdpi - 2x',
          'xxhdpi - 3x',
          'xxxhdpi'
        ],
        units: ['PX', 'DP', 'PT'],
        defaultBaselineIndex: 1,
        defaultUnitIndex: 0),
    PlatformModel(
      platform: Platform.Android,
      scale: ['ldpi', 'mdpi', 'hdpi', 'xhdpi', 'xxhdpi', 'xxxhdpi'],
      units: ['PX', 'DP'],
      defaultBaselineIndex: 1,
      defaultUnitIndex: 0,
    ),
    PlatformModel(
        platform: Platform.iOS,
        scale: ['1x', '2x', '3x'],
        units: ['PX', 'PT'],
        defaultBaselineIndex: 0,
        defaultUnitIndex: 0),
  ];

  PlatformModel selectedPlatform;
  String selectedScale;
  String selectedUnit;

  void updateTableType(int index) {
    this.selectedPlatform = _allPlatforms[index];

    // Set default value for dropdown: Baseline and Unit
    updateScale(selectedPlatform.scale[selectedPlatform.defaultBaselineIndex]);
    updateUnit(selectedPlatform.units[selectedPlatform.defaultUnitIndex]);

    // Set the selected platform toggle button
    for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
      isSelected[buttonIndex] = buttonIndex == index;
    }

    notifyListeners();
  }

  void initialize() {
    selectedPlatform = _allPlatforms[0];
    updateScale(selectedPlatform.scale[selectedPlatform.defaultBaselineIndex]);
    updateUnit(selectedPlatform.units[selectedPlatform.defaultUnitIndex]);
  }

  void updateScale(String newValue) {
    selectedScale = newValue;
    notifyListeners();
  }

  void updateUnit(String newValue) {
    selectedUnit = newValue;
    notifyListeners();
  }

  int getSelectedBaselineIndex() {
    return selectedPlatform.scale.indexOf(selectedScale);
  }
}
