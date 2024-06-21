import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';

class CustomAppBaListTile extends StatelessWidget {
  const CustomAppBaListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ListTile(
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        trailing: Transform.rotate(
            alignment: Alignment.center,
            angle: -1.571,
            child: const Icon(
              Icons.arrow_back_ios,
            )),
        leading: Image.asset(Assets.iconsLocation),
        title: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.18,
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
    );
  }
}
