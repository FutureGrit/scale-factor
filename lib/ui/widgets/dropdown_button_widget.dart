import 'package:flutter/material.dart';

import 'package:scale_factor/utils/ui_utils.dart';

class DropdownButtonWidget extends StatelessWidget {
  DropdownButtonWidget({@required this.label, @required this.dropdownButton});

  final DropdownButton dropdownButton;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.headline6,
        ),
        kVerticalSpaceSmall,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadiusSmall),
            color: Theme.of(context).backgroundColor,
            border: Border.all(
              color: Theme.of(context).focusColor,
              width: kBorderWidthNormal,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: dropdownButton,
            ),
          ),
        ),
      ],
    );
  }
}
