import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/best_selling_section.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/categories_section.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/custom_app_bar.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/custom_carouselSlider.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/new_arivals_section.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/recommended_section.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/search_and_menu.dart';

class HOmeScreenMobileLayout extends StatelessWidget {
  const HOmeScreenMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SearchAndMenu(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: CustomCarouselSlider(),
            ),
            CategoriesSection(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: BestSellingSection(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: NewArrivalSection(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: RecommededSection(),
            ),
          ],
        ),
      ),
    );
  }
}
