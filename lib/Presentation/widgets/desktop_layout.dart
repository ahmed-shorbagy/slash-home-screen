import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/bestSeller_gridView.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/categories_section.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/custom_app_bar.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/custom_carouselSlider.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/desktop_sections_titles.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/new_arrival_gridView.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/recommended_gridView.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: CustomCarouselSlider(),
          ),
          CategoriesSection(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: DesktopSectionstitles(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: BestSellerGridView(),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: NewArrivalGridView(),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: RecommendedGridView(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
