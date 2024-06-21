import 'package:flutter/cupertino.dart';
import 'package:slash_responsive_home_screen/constants.dart';

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
