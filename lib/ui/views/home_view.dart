import 'package:flutter/material.dart';
import 'package:scale_factor/ui/custom_icons.dart';
import 'package:scale_factor/ui/widgets/custom_app_bar.dart';

const spaceBetween = 8.0;
const borderWidth = 1.0;
const borderRadius = 4.0;
const toggleButtonsHeight = 48.0;
const iconSize = 28.0;
const labelTextStyle = TextStyle(
  fontFamily: 'RedHatText',
  fontSize: 12.0,
  letterSpacing: 3.0,
);

const horizontalPadding = 24.0;
const verticalPadding = 8.0;

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        //TODO: use media query for preferred size
        preferredSize: Size.fromHeight(106.0),
        child: CustomAppBar(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PLATFORM',
              style: labelTextStyle,
            ),
            SizedBox(
              height: spaceBetween,
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
            )
          ],
        ),
        // TODO 1.2: Implement "Value" edit text
        // TODO 1.3: Implement "Unit" and "Baseline" dropdown

        // TODO 2: Create output section
      ),
    );
  }
}
