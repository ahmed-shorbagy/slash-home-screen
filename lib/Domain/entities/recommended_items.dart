import 'package:slash_responsive_home_screen/Data/models/Product.dart';

class RecommendedItems extends Product {
  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String image;

  RecommendedItems(
      {required this.id,
      required this.name,
      required this.price,
      required this.image})
      : super(id: id, name: name, price: price, image: image);
}
