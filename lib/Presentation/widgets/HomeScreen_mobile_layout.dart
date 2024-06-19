import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/custom_app_bar.dart';

class HOmeScreenMobileLayout extends StatelessWidget {
  const HOmeScreenMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: CustomAppBar(),
        )
      ],
    );
  }
}
