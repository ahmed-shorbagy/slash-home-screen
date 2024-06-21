import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/Product.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/horizontal_list_item.dart';

class DesktopGridView extends StatelessWidget {
  const DesktopGridView({
    super.key,
    required this.items,
  });
  final List<Product> items;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: HorizontalListItem(product: items[index]),
        );
      },
    );
  }
}
