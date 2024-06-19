class NewArrival {
  final int id;
  final String name;
  final double price;
  final String image;

  NewArrival({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  factory NewArrival.fromJson(Map<String, dynamic> json) {
    return NewArrival(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}