import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/ui/widgets/dropdown_button_widget.dart';
import 'package:scale_factor/viewmodels/unit_view_model.dart';

class UnitDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UnitViewModel>(
      builder: (context, model, child) {
        return DropdownButtonWidget(
          isDisabled: false,
          label: ' UNIT',
          dropdownButton: DropdownButton<String>(
            value: model.selectedUnit,
            dropdownColor: Theme.of(context).cardColor,
            icon: Icon(
              Icons.arrow_drop_down,
              color: Theme.of(context).focusColor,
            ),
            isExpanded: true,
            isDense: false,
            style: Theme.of(context).textTheme.headline3,
            items: model.selectedPlatform.units
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }).toList(),
            onChanged: (String newValue) {
              model.updateUnit(newValue);
            },
          ),
        );
      },
    );
  }
}
