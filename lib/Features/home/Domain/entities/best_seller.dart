import 'package:slash_responsive_home_screen/Features/home/Data/models/Product.dart';

class BestSeller extends Product {
  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String image;

  BestSeller(
      {required this.id,
      required this.name,
      required this.price,
      required this.image})
      : super(id: id, name: name, price: price, image: image);
}
