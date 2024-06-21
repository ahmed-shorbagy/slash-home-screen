import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/HomeScreen_mobile_layout.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/adaptive_layout.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/desktop_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const HOmeScreenMobileLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
