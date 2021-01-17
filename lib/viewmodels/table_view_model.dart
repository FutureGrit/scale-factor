import 'package:flutter/material.dart';

import 'package:scale_factor/locator.dart';
import 'package:scale_factor/models/platform_model.dart';
import 'package:scale_factor/services/main_service.dart';

class TableViewModel extends ChangeNotifier {
  TableViewModel() {
    _mainService.updateTable = () {
      notifyListeners();
    };
  }

  final MainService _mainService = locator<MainService>();

  PlatformModel get selectedPlatform => _mainService.selectedPlatform;
  double get value => _mainService.value;
  double get valueInDPI => _mainService.valueInDPI;

  /// To highlight selected Baseline row in the table
  int get getSelectedBaselineIndex => _mainService.getSelectedBaselineIndex();

  /// To calculate the PX based on the value in DPI which is derived from the text field[VALUE]
  String convertDpiValueToPixel({@required factor}) {
    return (_mainService.valueInDPI * factor).toStringAsFixed(2);
  }
}
