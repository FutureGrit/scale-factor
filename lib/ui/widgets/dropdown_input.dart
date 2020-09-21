import 'package:flutter/material.dart';

import 'package:scale_factor/constants/app_colors.dart';
import 'package:scale_factor/utils/shared_styles.dart';
import 'package:scale_factor/utils/ui_utils.dart';

class DropdownInput extends StatefulWidget {
  final String label;
  final String defaultValue;
  final List<String> items;

  DropdownInput(
      {@required this.label,
      @required this.items,
      @required this.defaultValue});

  @override
  _DropdownInputState createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: labelTextStyle,
        ),
        verticalSpaceSmall,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadiusSmall),
            color: textBackgroundColor,
            border: Border.all(color: borderColor, width: borderWidthNormal),
          ),
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              // TODO: Change color of down arrow
              child: DropdownButton<String>(
                value: dropdownValue,
                isExpanded: true,
                isDense: false,
                style: inputFieldTextStyle,
                items:
                    widget.items.map<DropdownMenuItem<String>>((String value) {
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
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
