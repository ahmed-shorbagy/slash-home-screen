import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.styleBold22(context),
        ),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "See all",
                  style: AppStyles.styleRegular14(context),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE4E4E4),
                  ),
                  child: const Icon(CupertinoIcons.chevron_right))
            ],
          ),
        )
      ],
    );
  }
}
