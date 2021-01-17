import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/ui/widgets/dropdown_button_widget.dart';
import 'package:scale_factor/viewmodels/baseline_view_model.dart';

class BaselineDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BaselineViewModel>(builder: (context, baseline, child) {
      return IgnorePointer(
        ignoring: baseline.isDisabled,
        child: DropdownButtonWidget(
          isDisabled: baseline.isDisabled,
          label: ' BASELINE',
          dropdownButton: DropdownButton<String>(
            value: baseline.selectedScale,
            dropdownColor: Theme.of(context).cardColor,
            icon: Icon(
              Icons.arrow_drop_down,
              color: baseline.isDisabled
                  ? Theme.of(context).disabledColor
                  : Theme.of(context).focusColor,
            ),
            isExpanded: true,
            isDense: false,
            style: baseline.isDisabled
                ? Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Theme.of(context).disabledColor)
                : Theme.of(context).textTheme.headline3,
            items: baseline.selectedPlatform.scale
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
              baseline.updateScale(newValue);
            },
          ),
        ),
      );
    });
  }
}
