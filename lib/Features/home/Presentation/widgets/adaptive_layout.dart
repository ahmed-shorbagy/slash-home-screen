import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key, required this.mobileLayout, required this.desktopLayout});

  final WidgetBuilder mobileLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < SizeConfig.mobile) {
        return mobileLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
