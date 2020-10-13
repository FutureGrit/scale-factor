import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:scale_factor/enums/platform.dart';
import 'package:scale_factor/services/platform_model.dart';

class HomeViewService extends ChangeNotifier {
  HomeViewService() {
    initialize();
  }

  final List<PlatformModel> _allPlatforms = [
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

  List<bool> isSelected = [true, false, false];
  PlatformModel selectedPlatform;
  String selectedScale;
  String selectedUnit;
  double value = 10.00;
  double valueInDPI;
  bool isDisabled = false;

  /// To update the selected platform table type
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

  /// Initializing variable at start
  void initialize() {
    selectedPlatform = _allPlatforms[0];
    updateScale(selectedPlatform.scale[selectedPlatform.defaultBaselineIndex]);
    updateUnit(selectedPlatform.units[selectedPlatform.defaultUnitIndex]);
  }

  void setDefaultValue(double defaultValue) {
    print('Setting default value: $defaultValue');
    value = defaultValue;
    updateValueInDPI();
  }

  /// To update value of Baseline dropdown
  void updateScale(String newScale) {
    // if newScale is not equal to old selectedScale only then execute below code or update the table values
    if (newScale != selectedScale) {
      log('Calling Method: updateScale');
      //print('Setting default value: $defaultValue');
      selectedScale = newScale;
      updateValueInDPI();
      notifyListeners();
    }
  }

  /// To set value when text field [VALUE] will be updated
  void setValue(String newValue) {
    log('Calling Method: setValue');
    value = double.parse(newValue);
    updateValueInDPI();
    notifyListeners();
  }

  /// To update value of Unit dropdown
  void updateUnit(String newUnit) {
    // if newUnit is not equal to old selectedUnit only then execute below code or update the table values
    if (newUnit != selectedUnit) {
      log('Calling Method: updateUnit');
      selectedUnit = newUnit;
      isBaselineDropdownDisabled();
      notifyListeners();
    }
  }

  /// To enable and disable Baseline Dropdown interactivity based on selected unit type
  void isBaselineDropdownDisabled() {
    if (selectedUnit == 'PX' && isDisabled == true) {
      isDisabled = false;
    } else if (selectedUnit != 'PX' && isDisabled == false) {
      //TODO: Show a popup with checkbox to inform that why we have disabled Baseline dropdown and checkbox for asking to show it again.
      updateScale(
          selectedPlatform.scale[selectedPlatform.defaultBaselineIndex]);
      isDisabled = true;
    }
  }

  /// To highlight selected Baseline row in the table
  int getSelectedBaselineIndex() =>
      selectedPlatform.scale.indexOf(selectedScale);

  /// To convert input value in density independent pixel or pixel per inch
  void updateValueInDPI() {
    print(
        'Selected: == ${selectedPlatform.factor[getSelectedBaselineIndex()]} and value is: $value');
    if (selectedUnit == 'PX') {
      valueInDPI = double.parse(
          (value / selectedPlatform.factor[getSelectedBaselineIndex()])
              .toStringAsFixed(2));
    } else {
      /// here we don't need to convert value in DPI because by default
      /// selected baseline scale will be [mdpi - 1x]
      valueInDPI = value;
    }
  }

  /// To calculate the PX based on the value in DPI which is derived from the text field[VALUE]
  String convertDpiValueToPixel({@required factor}) {
    log('Calling Method: convertDpiValueInPixel : $factor');
    return (valueInDPI * factor).toStringAsFixed(2);
  }
}
