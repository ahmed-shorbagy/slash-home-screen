import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/Product.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/horizontal_list_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    required this.items,
  });
  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width * 0.4 + 50,
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
