import 'dart:math';

import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';
import 'package:slash_responsive_home_screen/Data/models/Product.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/circular_favorits_icon.dart';
import 'package:slash_responsive_home_screen/constants.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({
    super.key,
    required this.product,
  });
  final Product product;
  static const List<String> logos = [
    Assets.iconsLogo1,
    Assets.iconsLogo2,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          FittedBox(
            fit: BoxFit.fill,
            child: Container(
              height: SizeConfig.screenhieght! * 0.16,
              width: SizeConfig.screenhieght! * 0.16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(product.image)),
              ),
            ),
          ),
          const Positioned(
            top: 6,
            right: 6,
            child: CircularFavorietsIcon(),
          )
        ]),
        SizedBox(
          width: SizeConfig.screenhieght! * 0.16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(product.name,
                  textAlign: TextAlign.start,
                  style: AppStyles.styleRegular16(context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "EGP${product.price}",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Image.asset(
                          logos[Random().nextInt(logos.length)],
                          scale: 0.8,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: kPrimaryColor),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 16,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
