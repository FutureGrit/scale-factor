import 'package:flutter/material.dart';
import 'package:scale_factor/custom_icons.dart';

import 'custom_icon_button.dart';

const titleTextStyle = TextStyle(
    fontSize: 32,
    fontFamily: 'RedHatText',
    fontWeight: FontWeight.w900,
    color: Colors.black,
    letterSpacing: 10);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                // App title text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Scale',
                      style: titleTextStyle,
                    ),
                    Text(
                      'Factor',
                      style: titleTextStyle,
                    ),
                  ],
                ),
              ),
              CustomIconButton(
                // This is Information icon
                icon: CustomIcons.info,
                backgroundColor: Color(0xFFFF3D00),
              ),
              SizedBox(
                width: 16.0,
              ),
              CustomIconButton(
                // This is Dark-Mode icon
                icon: CustomIcons.dark_mode,
                iconColor: Color(0xFFFF3D00),
                backgroundColor: Color(0xFF0F171C),
              )
            ],
          ),
        ),
      ),
    );
  }
}
