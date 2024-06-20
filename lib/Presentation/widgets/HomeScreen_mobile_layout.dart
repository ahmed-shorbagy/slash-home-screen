import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/custom_app_bar.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/custom_carouselSlider.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/search_and_menu.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/section_title.dart';
import 'package:slash_responsive_home_screen/constants.dart';

class HOmeScreenMobileLayout extends StatelessWidget {
  const HOmeScreenMobileLayout({super.key});
  static const icons = [
    Assets.iconsFashion,
    Assets.iconsGames,
    Assets.iconsAccessories,
    Assets.iconsBooks,
    Assets.iconsBooks,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Column(
        children: [
          const CustomAppBar(),
          const SearchAndMenu(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: CustomCarouselSlider(),
          ),
          Column(
            children: [
              const SectionTitle(
                title: "Categories",
              ),
              SingleChildScrollView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      for (var icon in icons)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: CircularCategoriesItem(
                            icon: icon,
                            onTap: () {},
                          ),
                        )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CircularCategoriesItem extends StatelessWidget {
  const CircularCategoriesItem({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final String icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 72,
        width: 72,
        decoration:
            const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
        child: Image.asset(icon),
      ),
    );
  }
}
