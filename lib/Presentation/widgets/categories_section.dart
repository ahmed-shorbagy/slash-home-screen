import 'package:flutter/cupertino.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/circular_categories_item.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/section_title.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  static const icons = [
    Assets.iconsFashion,
    Assets.iconsGames,
    Assets.iconsAccessories,
    Assets.iconsBooks,
    Assets.iconsBooks,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Categories",
          onTap: () {},
        ),
        SingleChildScrollView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  icons.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: CircularCategoriesItem(
                      icon: icons[index],
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
