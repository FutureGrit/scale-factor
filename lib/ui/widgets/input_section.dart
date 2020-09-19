import 'package:flutter/material.dart';

import '../custom_icons.dart';

const spaceBetweenSmall = 8.0;
const spaceBetweenMedium = 16.0;
const spaceBetweenLarge = 24.0;
//TODO: set above spaces in ui_util

const borderWidth = 1.0;
const borderRadius = 4.0;
const toggleButtonsHeight = 48.0;
const iconSize = 28.0;
const labelTextStyle = TextStyle(
  fontFamily: 'RedHatText',
  fontSize: 12.0,
  letterSpacing: 2.0,
);

// TODO: move below padding to ui_util
const horizontalPadding = 24.0;

class InputSection extends StatefulWidget {
  @override
  _InputSectionState createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  List<bool> isSelected = [true, false, false];
  int _baselineValue = 1;
  int _unit = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' PLATFORM',
          style: labelTextStyle,
        ),
        SizedBox(
          height: spaceBetweenSmall,
        ),
        ToggleButtons(
          constraints: BoxConstraints.expand(
            //TODO: Find another way to set width
            width: ((MediaQuery.of(context).size.width) -
                    ((isSelected.length + 1) * borderWidth) -
                    (horizontalPadding * 2)) /
                isSelected.length,
            height: toggleButtonsHeight,
          ),
          borderWidth: borderWidth,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          // TODO: Create const for Color Hex alpha values
          color: Color(0x80486D87),
          borderColor: Color(0xFFFF3D00),
          selectedBorderColor: Color(0xFFFF3D00),
          selectedColor: Color(0xFFFCF5EF),
          fillColor: Color(0xFFFF3D00),
          children: [
            Text(
              'BOTH',
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 3.0,
                fontFamily: 'RedHatText',
                fontWeight: FontWeight.w900,
              ),
            ),
            Icon(
              CustomIcons.android,
              size: iconSize,
            ),
            Icon(
              CustomIcons.ios,
              size: iconSize,
            )
          ],
          isSelected: isSelected,
          onPressed: (int index) {
            setState(() {
              for (int buttonIndex = 0;
                  buttonIndex < isSelected.length;
                  buttonIndex++) {
                isSelected[buttonIndex] = buttonIndex == index;
              }
              // TODO: Set value of editText and dropdown to default as per selected platform
              // TODO: Clear table
            });
          },
        ),
        SizedBox(
          height: spaceBetweenLarge,
        ),
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // VALUE label and TextView
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' BASELINE',
                      style: labelTextStyle,
                    ),
                    SizedBox(
                      height: spaceBetweenSmall,
                    ),
                    Container(
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
                          // TODO: Set horizontal padding to 12
                          // TODO: Change color of down arrow
                          child: Expanded(
                            child: DropdownButton(
                              isExpanded: true,
                              isDense: false,
                              //dropdownColor: Colors.pinkAccent,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'RedHatText',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF023047),
                                letterSpacing: 1.5,
                              ),
                              value: _baselineValue,
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    'ldpi (120 dpi, 0.75x)',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'mdpi (160 dpi, 1x)',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'hdpi (240 dpi, 1.5x)',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'xhdpi (320 dpi, 2x)',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'xxhdpi (480 dpi, 3x)',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  value: 5,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'xxxhdpi (640 dpi, 4x)',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  value: 6,
                                )
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _baselineValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: spaceBetweenMedium,
              ),

              // UNIT label and Dropdown
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' VALUE',
                      style: labelTextStyle,
                    ),
                    SizedBox(
                      height: spaceBetweenSmall,
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'RedHatText',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF023047),
                        letterSpacing: 1.5,
                      ),
                      //maxLength: 6,
                      maxLines: 1,
                      autofocus: true,
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12.0),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(
                            color: Color(0xFFFF3D00),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(
                            color: Color(0xFFFF3D00),
                            width: 1.0,
                          ),
                        ),
                        hintText: '24',
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: spaceBetweenMedium,
              ),

              // BASELINE label and Dropdown
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' UNIT',
                      style: labelTextStyle,
                    ),
                    SizedBox(
                      height: spaceBetweenSmall,
                    ),
                    Container(
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
                          // TODO: Set horizontal padding to 12
                          // TODO: Change color of down arrow
                          child: DropdownButton(
                            isExpanded: true,
                            //dropdownColor: Colors.pinkAccent,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'RedHatText',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF023047),
                              letterSpacing: 1.5,
                            ),
                            value: _unit,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  'PX',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'DP',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'PT',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                value: 3,
                              )
                            ],
                            onChanged: (value) {
                              setState(() {
                                _unit = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
//TODO: Future Enhancement: Split this class in two: = 1.[platform_widget] and 2.[value_input_widget]
