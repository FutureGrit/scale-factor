import 'package:flutter/material.dart';

import 'package:scale_factor/utils/ui_utils.dart';

class DropdownButtonWidget extends StatelessWidget {
  DropdownButtonWidget(
      {@required this.label,
      @required this.dropdownButton,
      @required this.isDisabled});

  final DropdownButton dropdownButton;
  final String label;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: isDisabled
              ? Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Theme.of(context).disabledColor)
              : Theme.of(context).textTheme.headline6,
        ),
        kVerticalSpaceSmall,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadiusSmall),
            color: Theme.of(context).backgroundColor,
            border: Border.all(
              color: isDisabled
                  ? Theme.of(context).disabledColor
                  : Theme.of(context).focusColor,
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
