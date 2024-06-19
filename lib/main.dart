import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_responsive_home_screen/Core/errors/simple_bloc_observer.dart';
import 'package:slash_responsive_home_screen/Core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  Bloc.observer = SimpleBLocObserver();
  runApp(const SlashResponsiveHomeSceen());
}

class SlashResponsiveHomeSceen extends StatelessWidget {
  const SlashResponsiveHomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
