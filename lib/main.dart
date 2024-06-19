import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_responsive_home_screen/Core/errors/simple_bloc_observer.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';
import 'package:slash_responsive_home_screen/Presentation/views/Home_view.dart';

void main() {
  Bloc.observer = SimpleBLocObserver();
  runApp(const SlashResponsiveHomeSceen());
}

class SlashResponsiveHomeSceen extends StatelessWidget {
  const SlashResponsiveHomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig()
        .init(context); //initialize size config to get screen height and width
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
