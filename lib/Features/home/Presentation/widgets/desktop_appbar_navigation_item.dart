import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/appBar_item.dart';

class DesktopLayoutAppBarNavigationItems extends StatelessWidget {
  const DesktopLayoutAppBarNavigationItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarItem(
          title: "Home",
          icon: Assets.iconsHome,
        ),
        AppBarItem(
          title: "Favorites",
          icon: Assets.iconsHeart,
        ),
        AppBarItem(
          title: "My Cart",
          icon: Assets.iconsShoppingCart,
        ),
        AppBarItem(
          title: "Profile",
          icon: Assets.iconsProfileCircle,
        ),
      ],
    );
  }
}
