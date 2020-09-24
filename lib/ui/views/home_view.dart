import 'package:flutter/material.dart';
import 'package:scale_factor/enums/platform.dart';

import 'package:scale_factor/ui/widgets/baseline_value_unit.dart';
import 'package:scale_factor/ui/widgets/custom_app_bar.dart';
import 'package:scale_factor/ui/widgets/platform_type.dart';
import 'package:scale_factor/ui/widgets/tables/table.dart';
import 'package:scale_factor/utils/ui_utils.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        //TODO: use media query for preferred size
        preferredSize: Size.fromHeight(106.0),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPaddingLarge,
              vertical: verticalPaddingSmall),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlatformType(),
              verticalSpaceLarge,
              BaselineValueUnit(),
              TableType(
                platform: Platform.Both,
                //platform: Platform.Android,
                //platform: Platform.iOS,
              )
            ],
          ),
          // TODO 2: Create output section
        ),
      ),
    );
  }
}
