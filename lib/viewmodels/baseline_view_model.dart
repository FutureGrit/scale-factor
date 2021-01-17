import 'package:flutter/material.dart';

import 'package:scale_factor/locator.dart';
import 'package:scale_factor/models/platform_model.dart';
import 'package:scale_factor/services/main_service.dart';

class BaselineViewModel extends ChangeNotifier {
  BaselineViewModel() {
    _mainService.updateBaselineDropdown = () {
      notifyListeners();
    };
  }
  final MainService _mainService = locator<MainService>();

  bool get isDisabled => _mainService.isDisabled;
  PlatformModel get selectedPlatform => _mainService.selectedPlatform;
  String get selectedScale => _mainService.selectedScale;

  /// To update value of Baseline dropdown
  void updateScale(String newScale) {
    // if newScale is not equal to old selectedScale only then execute below code or update the table values
    if (newScale != selectedScale) {
      _mainService.selectedScale = newScale;
      _mainService.convertValueInDPI();
      _mainService.updateTable();
      notifyListeners();
    }
  }
}
