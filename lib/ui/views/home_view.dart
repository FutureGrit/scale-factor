import 'package:flutter/material.dart';
import 'package:scale_factor/ui/widgets/custom_app_bar.dart';
import 'package:scale_factor/ui/widgets/input_section.dart';

// TODO: move below padding to ui_util
const horizontalPadding = 24.0;
const verticalPadding = 8.0;

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
        child: InputSection(),
        // TODO 1.2: Implement "Value" edit text
        // TODO 1.3: Implement "Unit" and "Baseline" dropdown

        // TODO 2: Create output section
      ),
    );
  }
}
