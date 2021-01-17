import 'package:scale_factor/models/platform_model.dart';
import 'package:scale_factor/utils/platform_model_details.dart';

class MainService {
  PlatformModel selectedPlatform;
  String selectedScale;
  String selectedUnit;
  double value;
  double valueInDPI;
  bool isDisabled = false;

  final List<PlatformModel> _allPlatforms = allPlatforms;

  Function updateTable = () {};
  Function updateBaselineDropdown = () {};
  Function updateUnitDropdown = () {};

  MainService() {
    selectedPlatform = _allPlatforms[0];
    selectedScale =
        selectedPlatform.scale[selectedPlatform.defaultBaselineIndex];
    selectedUnit = selectedPlatform.units[selectedPlatform.defaultUnitIndex];
  }

  /// To get the index of selected platform index
  int getSelectedPlatformIndex() => _allPlatforms.indexOf(selectedPlatform);

  /// To highlight selected Baseline row in the table
  int getSelectedBaselineIndex() =>
      selectedPlatform.scale.indexOf(selectedScale);

  String getDefaultBaselineScale() =>
      selectedPlatform.scale[selectedPlatform.defaultBaselineIndex];

  /// To convert input value in density independent pixel or pixel per inch
  void convertValueInDPI() {
    if (selectedUnit == 'PX') {
      valueInDPI = double.parse((value /
              selectedPlatform
                  .factor[selectedPlatform.scale.indexOf(selectedScale)])
          .toStringAsFixed(2));
    } else {
      /// here we don't need to convert value in DPI because by default
      /// selected baseline scale will be [mdpi - 1x]
      valueInDPI = value;
    }
  }

  /// To update the selected platform type default settings of BASELINE, UNIT and RESULT_TABLE
  void selectedPlatformDefaultSettings() {
    selectedScale = getDefaultBaselineScale();
    selectedUnit = selectedPlatform.units[selectedPlatform.defaultUnitIndex];
    isDisabled = false;
    updateBaselineDropdown();
    updateUnitDropdown();
    updateTable();
  }

  /// To enable and disable Baseline Dropdown interactivity based on selected unit type
  void shouldDisableBaselineDropdown() {
    if (selectedUnit == 'PX' && isDisabled == true) {
      isDisabled = false;
      updateBaselineDropdown();
    } else if (selectedUnit != 'PX' && isDisabled == false) {
      selectedScale = getDefaultBaselineScale();
      isDisabled = true;
      convertValueInDPI();

      updateBaselineDropdown();
      updateTable();
    }
  }
}
