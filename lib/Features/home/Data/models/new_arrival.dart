import 'package:slash_responsive_home_screen/Features/home/Data/models/Product.dart';

class NewArrival extends Product {
  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String image;

  NewArrival({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  }) : super(id: id, name: name, price: price, image: image);

  factory NewArrival.fromJson(Map<String, dynamic> json) {
    return NewArrival(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}
