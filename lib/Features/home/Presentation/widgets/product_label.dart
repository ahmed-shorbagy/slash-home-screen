import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/Product.dart';
import 'package:slash_responsive_home_screen/constants.dart';

class ProductLabel extends StatelessWidget {
  const ProductLabel({
    super.key,
    required this.product,
    required this.logos,
  });

  final Product product;
  final List<String> logos;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          product.name,
          textAlign: TextAlign.start,
          style: AppStyles.styleRegular16(context),
          overflow: TextOverflow.ellipsis,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "EGP${product.price}",
                style: AppStyles.styleRegular16(context)
                    .copyWith(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      logos[Random().nextInt(logos.length)],
                      scale: width > SizeConfig.mobile
                          ? 0.4
                          : MediaQuery.sizeOf(context).width * 0.002,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: kPrimaryColor),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: width > SizeConfig.mobile
                            ? 60
                            : MediaQuery.sizeOf(context).width * 0.06,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
