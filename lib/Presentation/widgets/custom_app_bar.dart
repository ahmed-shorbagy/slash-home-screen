import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/custom_appBar_listTile.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/desktop_appbar_navigation_item.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/search_and_menu.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Slash.",
          style: AppStyles.styleBold22(context),
        ),
        const CustomAppBaListTile(),
        width > SizeConfig.mobile
            ? const Expanded(
                child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SearchAndMenu(),
              ))
            : const SizedBox(),
        width > SizeConfig.mobile
            ? const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: DesktopLayoutAppBarNavigationItems(),
                ),
              )
            : const SizedBox(),
        width > SizeConfig.mobile
            ? const SizedBox()
            : Image.asset(Assets.iconsNotification)
      ],
    );
  }
}
