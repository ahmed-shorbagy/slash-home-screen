import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title, icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(icon),
        ),
        Text(
          title,
          style: AppStyles.styleRegular14(context),
        )
      ],
    );
  }
}
