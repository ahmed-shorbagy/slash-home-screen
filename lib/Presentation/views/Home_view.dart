import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/HomeScreen_mobile_layout.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/adaptive_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const HOmeScreenMobileLayout(),
          desktopLayout: (context) => const SizedBox()),
    );
  }
}
