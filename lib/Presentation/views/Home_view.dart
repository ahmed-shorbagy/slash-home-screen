import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/HomeScreen_mobile_layout.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/adaptive_layout.dart';

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

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Desktop Home')),
      body: const Center(
        child: Text('Desktop content goes here'),
      ),
    );
  }
}
