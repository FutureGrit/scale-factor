import 'package:flutter/material.dart';

import 'package:scale_factor/locator.dart';
import 'package:scale_factor/models/platform_model.dart';
import 'package:scale_factor/services/main_service.dart';
import 'package:scale_factor/utils/platform_model_details.dart';

class PlatformViewModel extends ChangeNotifier {
  final MainService _mainService = locator<MainService>();

  List<bool> isSelected = [true, false, false];

  PlatformModel get selectedPlatform => _mainService.selectedPlatform;
  String get selectedScale => _mainService.selectedScale;
  String get selectedUnit => _mainService.selectedUnit;

  /// To update the selected platform table type
  void updatePlatformType(int newPlatformIndex) {
    if (_mainService.getSelectedPlatformIndex() != newPlatformIndex) {
      _mainService.selectedPlatform = allPlatforms[newPlatformIndex];
      // Set the selected platform toggle button
      for (int buttonIndex = 0;
          buttonIndex < isSelected.length;
          buttonIndex++) {
        isSelected[buttonIndex] = buttonIndex == newPlatformIndex;
      }
      notifyListeners();
      _mainService.selectedPlatformDefaultSettings();
    }
  }
}
