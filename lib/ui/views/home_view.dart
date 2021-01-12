import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/services/home_view_service.dart';
import 'package:scale_factor/ui/themes/shared_styles.dart';
import 'package:scale_factor/ui/widgets/baseline_value_unit.dart';
import 'package:scale_factor/ui/widgets/custom_app_bar.dart';
import 'package:scale_factor/ui/widgets/platform_type.dart';
import 'package:scale_factor/ui/widgets/tables/result_table.dart';
import 'package:scale_factor/utils/methods.dart';
import 'package:scale_factor/utils/ui_utils.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Methods.context = context;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Methods.getHeight(divideBy: 6)),
        child: CustomAppBar(),
      ),
      body: Consumer<HomeViewService>(
        builder: (context, data, child) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: kPaddingLarge, vertical: kPaddingSmall),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PlatformType(),
                  kVerticalSpaceLarge,
                  BaselineValueUnit(),
                  kVerticalSpaceLarge,
                  ResultTable(),
                  kVerticalSpaceLarge,
                  Center(
                    child: Text(
                      '#FutureGrit',
                      style: kWatermarkTextStyle.copyWith(
                          color: Theme.of(context).dividerColor),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
