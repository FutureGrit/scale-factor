import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scale_factor/services/home_view_service.dart';

import 'package:scale_factor/utils/ui_utils.dart';

class DropdownInput extends StatefulWidget {
  final String label;
  final String defaultValue;
  final List<String> items;
  final Function onChange;

  DropdownInput(
      {@required this.label,
      @required this.items,
      @required this.defaultValue,
      @required this.onChange});

  @override
  _DropdownInputState createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String dropdownValue;
  var platform;

  @override
  void initState() {
    super.initState();
    platform = Provider.of<HomeViewService>(context, listen: false);
    //dropdownValue = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
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
              child: DropdownButton<String>(
                value: platform.dropdownValue, // TODO:
                dropdownColor: Theme.of(context).cardColor,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Theme.of(context).focusColor,
                ),
                isExpanded: true,
                isDense: false,
                style: Theme.of(context).textTheme.headline3,
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
                onChanged: widget.onChange,
                // onChanged: (String newValue) {
                //   setState(() {
                //     dropdownValue = newValue;
                //   });
                // },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
