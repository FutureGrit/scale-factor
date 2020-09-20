import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  final String defaultValue;
  final List<String> items;

  DropdownInput({@required this.items, @required this.defaultValue});

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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFFF3D00),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          // TODO: Change color of down arrow
          child: DropdownButton<String>(
            value: dropdownValue,
            isExpanded: true,
            isDense: false,
            // TODO: Extract TextStyle to ui_util
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'RedHatText',
              fontWeight: FontWeight.w500,
              color: Color(0xFF023047),
              letterSpacing: 1.5,
            ),
            items: widget.items.map<DropdownMenuItem<String>>((String value) {
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
    );
  }
}
