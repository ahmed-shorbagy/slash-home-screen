import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: const Color(0xffE4E4E4),
        filled: true,
        hintText: "Search here..",
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xff969696)),
        prefixIcon: Image.asset(
          Assets.iconsSearchNormal,
          color: const Color(0xff5F5F5F),
        ),
      ),
    );
  }
}
