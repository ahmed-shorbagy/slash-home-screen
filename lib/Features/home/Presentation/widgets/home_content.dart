import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/categories_section.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/custom_app_bar.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/custom_carouselSlider.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/horizontal_lists_section.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/search_and_menu.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomAppBar(),
            SearchAndMenu(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: CustomCarouselSlider(),
            ),
            CategoriesSection(),
            HorizontalListsSection(),
          ],
        ),
      ),
    );
  }
}
