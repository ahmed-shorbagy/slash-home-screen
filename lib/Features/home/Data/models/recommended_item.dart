import 'package:slash_responsive_home_screen/Features/home/Data/models/Product.dart';

class RecommendedItem extends Product {
  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String image;

  RecommendedItem({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  }) : super(id: id, name: name, price: price, image: image);

  factory RecommendedItem.fromJson(Map<String, dynamic> json) {
    return RecommendedItem(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}
