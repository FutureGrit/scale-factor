// TODO: This class will be responsible to manage common shared variables like:
// selectedPlatform, selectedBaseline enteredValue and selectedUnit.

import 'package:flutter/material.dart';
import 'package:scale_factor/enums/platform.dart';

class HomeViewService extends ChangeNotifier {
  List<bool> isSelected = [true, false, false];
  List<Platform> platformType = [Platform.Both, Platform.Android, Platform.iOS];

  Platform selectedPlatform = Platform.Both;

  void updateTableType(int index) {
    this.selectedPlatform = platformType[index];
    for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
      isSelected[buttonIndex] = buttonIndex == index;
    }
    notifyListeners();
  }
}
