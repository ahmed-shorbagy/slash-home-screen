import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Data/models/Product.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/circular_favorits_icon.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/product_label.dart';

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
    return FittedBox(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.17,
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: MediaQuery.sizeOf(context).width * 0.16,
                width: MediaQuery.sizeOf(context).width * 0.17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(product.image)),
                ),
              ),
              const Positioned(
                top: 6,
                right: 6,
                child: CircularFavorietsIcon(),
              )
            ]),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.17,
              child: ProductLabel(product: product, logos: logos),
            ),
          ],
        ),
      ),
    );
  }
}
