import 'package:flutter/material.dart';
import 'package:scale_factor/locator.dart';

import 'package:scale_factor/services/main_service.dart';

class ValueViewModel extends ChangeNotifier {
  final MainService _mainService = locator<MainService>();

  void setDefaultValue(String defaultValue) => setValue(defaultValue);

  /// To set value when text field [VALUE] will be updated
  void setValue(String newValue) {
    _mainService.value = double.parse(newValue);
    _mainService.convertValueInDPI();
    _mainService.updateTable();
  }
}
