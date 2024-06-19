class BestSeller {
  final int id;
  final String name;
  final double price;
  final String image;

  BestSeller({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  factory BestSeller.fromJson(Map<String, dynamic> json) {
    return BestSeller(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}