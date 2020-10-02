import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scale_factor/ui/widgets/custom_icon_button.dart';
import 'package:scale_factor/utils/ui_utils.dart';

class InformationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: kPaddingLarge, vertical: kPaddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                icon: Icons.close,
                iconColor: Colors.white,
                onPressed: () => Navigator.pop(context),
              ),
              kVerticalSpaceSmall,
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  // TODO: Implement Design guide
                  child: Text(
                    'Design guide to iOS and Android graphic assets and app icons. Design guide to iOS and Android graphic assets and app icons. Design guide to iOS and Android graphic assets and app icons. Design guide to iOS and Android graphic assets and app icons. Design guide to iOS and Android graphic assets and app icons. Design guide to iOS and Android graphic assets and app icons. Design guide to iOS and Android graphic assets and app icons. Design guide to iOS and Android graphic assets and app icons. Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.Design guide to iOS and Android graphic assets and app icons.',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
