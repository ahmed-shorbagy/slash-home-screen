import 'dart:math';

import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/app_styles.dart';
import 'package:slash_responsive_home_screen/Data/models/Product.dart';
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
    return Column(
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
                    scale: 0.87,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: kPrimaryColor),
                  child: const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
