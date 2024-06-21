import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';

class SearchAndMenu extends StatelessWidget {
  const SearchAndMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0),
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
            ),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: AspectRatio(
            aspectRatio: 2 / 1.5,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffE4E4E4),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image.asset(
                color: const Color(0xff5F5F5F),
                Assets.iconsHorizontalSlider2,
                scale: 0.7,
              ),
            ),
          ),
        )
      ],
    );
  }
}
