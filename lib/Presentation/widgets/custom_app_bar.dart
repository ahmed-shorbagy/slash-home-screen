import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Slash.",
          style: AppStyles.styleBold22(context),
        ),
        IntrinsicWidth(
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.titleHeight,
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            trailing: Transform.rotate(
                angle: -1.571, child: const Icon(Icons.arrow_back_ios)),
            leading: Image.asset(Assets.iconsLocation),
            title: SizedBox(
              width: SizeConfig.screenwidth! * 0.18,
              child: Text(
                "Nasr City",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleRegular14(context),
              ),
            ),
            subtitle: Text("Cairo",
                style: AppStyles.styleRegular14(context)
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
        ),
        Image.asset(
          Assets.iconsNotification,
        )
      ],
    );
  }
}
