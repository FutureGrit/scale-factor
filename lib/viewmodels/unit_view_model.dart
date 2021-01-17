import 'package:flutter/material.dart';

import 'package:scale_factor/locator.dart';
import 'package:scale_factor/models/platform_model.dart';
import 'package:scale_factor/services/main_service.dart';

class UnitViewModel extends ChangeNotifier {
  UnitViewModel() {
    _mainService.updateUnitDropdown = () {
      notifyListeners();
    };
  }

  final MainService _mainService = locator<MainService>();

  PlatformModel get selectedPlatform => _mainService.selectedPlatform;
  String get selectedUnit => _mainService.selectedUnit;
  bool get isDisabled => _mainService.isDisabled;

  /// To update value of Unit dropdown
  void updateUnit(String newUnit) {
    // if newUnit is not equal to old selectedUnit only then execute below code or update the table values
    if (newUnit != selectedUnit) {
      _mainService.selectedUnit = newUnit;
      notifyListeners();
      _mainService.shouldDisableBaselineDropdown();
    }
  }
}
