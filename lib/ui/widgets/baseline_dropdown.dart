import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/services/home_view_service.dart';
import 'package:scale_factor/ui/widgets/dropdown_button_widget.dart';

class BaselineDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeViewService platform =
        Provider.of<HomeViewService>(context, listen: false);
    return DropdownButtonWidget(
      label: ' Baseline',
      dropdownButton: DropdownButton<String>(
        value: platform.selectedScale,
        dropdownColor: Theme.of(context).cardColor,
        icon: Icon(
          Icons.arrow_drop_down,
          color: Theme.of(context).focusColor,
        ),
        isExpanded: true,
        isDense: false,
        style: Theme.of(context).textTheme.headline3,
        items: platform.selectedPlatform.scale
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
          platform.updateScale(newValue);
        },
      ),
    );
  }
}
