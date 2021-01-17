import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scale_factor/ui/custom_icons.dart';

import 'package:scale_factor/utils/methods.dart';
import 'package:scale_factor/utils/ui_utils.dart';
import 'package:scale_factor/viewmodels/platform_view_model.dart';

class PlatformType extends StatefulWidget {
  @override
  _PlatformTypeState createState() => _PlatformTypeState();
}

class _PlatformTypeState extends State<PlatformType> {
  List<bool> isSelected;

  @override
  void initState() {
    isSelected =
        Provider.of<PlatformViewModel>(context, listen: false).isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PlatformViewModel>(
      builder: (context, model, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' PLATFORM',
              style: Theme.of(context).textTheme.headline6,
            ),
            kVerticalSpaceSmall,
            ToggleButtons(
              constraints: BoxConstraints.expand(
                width: ((MediaQuery.of(context).size.width) -
                        ((isSelected.length + 1) * kBorderWidthNormal) -
                        (kPaddingMedium * 2)) /
                    isSelected.length,
                height: Methods.getHeight(divideBy: 13.5),
              ),
              children: [
                Text(
                  'BOTH',
                ),
                Icon(
                  CustomIcons.android,
                  size: kToggleButtonIconSize,
                ),
                Icon(
                  CustomIcons.ios,
                  size: kToggleButtonIconSize,
                )
              ],
              isSelected: isSelected,
              onPressed: (int index) {
                model.updatePlatformType(index);
              },
            ),
          ],
        );
      },
    );
  }
}
