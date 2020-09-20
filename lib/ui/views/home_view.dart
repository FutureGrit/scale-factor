import 'package:flutter/material.dart';

import 'package:scale_factor/ui/widgets/baseline_value_unit.dart';
import 'package:scale_factor/ui/widgets/custom_app_bar.dart';
import 'package:scale_factor/ui/widgets/platform.dart';
import 'package:scale_factor/utils/ui_utils.dart';

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
            horizontal: horizontalPaddingLarge, vertical: verticalPaddingSmall),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [PlatformType(), verticalSpaceLarge, BaselineValueUnit()],
        ),
        // TODO 2: Create output section
      ),
    );
  }
}
