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
      scale: ['ldpi', 'mdpi', 'hdpi', 'xhdpi', 'xxhdpi', 'xxxhdpi'],
      factor: [.75, 1.00, 1.50, 2.00, 3.00, 4.00],
      units: ['PX', 'DP'],
      defaultBaselineIndex: 1,
      defaultUnitIndex: 0,
    ),
    PlatformModel(
      platform: Platform.iOS,
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
  double value = 25.00;
  double valueInDPI;
  bool isDisabled = false;

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

  /// To update value of Baseline dropdown
  void updateScale(String newValue) {
    selectedScale = newValue;
    updateValueInDPI();
    notifyListeners();
  }

  /// To set value when text field [VALUE] will be updated
  void setValue(String newValue) {
    print('VALUE: $value');
    value = double.parse(newValue);
    updateValueInDPI();
    notifyListeners();
    // TODO: Calculate value and Update table
    // TODO: if the new value is not same as old only then update table
  }

  /// To update value of Unit dropdown
  void updateUnit(String newValue) {
    // TODO Check: if newValue is not equal to old only then execute below code
    selectedUnit = newValue;
    updateValueInDPI();
    isBaselineDropdownDisabled();
    // if (selectedUnit == 'PX') {
    //   isDisabled = false;
    // } else if (selectedUnit != 'PX' && isDisabled == false) {
    //   isDisabled = true;
    // }
    print('UNIT: $newValue');
    notifyListeners();
  }

  void isBaselineDropdownDisabled() {
    // TODO: update disabled dropdown style
    // if To make dropdown interactive so user can change baseline
    if (selectedUnit == 'PX' && isDisabled == true) {
      isDisabled = false;
      //return false;
    } else if (selectedUnit != 'PX' && isDisabled == false) {
      updateScale(
          selectedPlatform.scale[selectedPlatform.defaultBaselineIndex]);
      isDisabled = true;
    }
    //TODO: try to remove notify listener and check if still works
  }

  /// To highlight selected Baseline row in the table
  int getSelectedBaselineIndex() =>
      selectedPlatform.scale.indexOf(selectedScale);

  void updateValueInDPI() {
    // TODO: Replace PX with enums
    if (selectedUnit == 'PX') {
      //if ('PX' == 'PX') {
      valueInDPI = double.parse(
          (value / selectedPlatform.factor[getSelectedBaselineIndex()])
              .toStringAsFixed(2));
    } else {
      valueInDPI = value;
    }
  }

  /// To calculate the PX based on the value in DPI which is derived from the text field[VALUE]
  String convertDpiValueToPixel({@required factor}) {
    return (valueInDPI * factor).toStringAsFixed(2);
  }
}
