import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/Product.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/circular_favorits_icon.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/product_label.dart';

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
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.3,
      height: MediaQuery.sizeOf(context).width * 0.2 + 50,
      child: FittedBox(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: MediaQuery.sizeOf(context).width * 0.3,
                width: MediaQuery.sizeOf(context).width * 0.3,
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
              width: MediaQuery.sizeOf(context).width * 0.3,
              child: ProductLabel(product: product, logos: logos),
            ),
          ],
        ),
      ),
    );
  }
}
