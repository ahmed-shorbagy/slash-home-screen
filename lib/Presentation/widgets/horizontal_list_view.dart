import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';
import 'package:slash_responsive_home_screen/Data/models/Product.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/horizontal_list_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    required this.items,
  });
  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenhieght! * 0.16 + 100,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: HorizontalListItem(
              product: items[index],
            ),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
