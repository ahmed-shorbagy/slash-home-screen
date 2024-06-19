class RecommendedItem {
  final int id;
  final String name;
  final double price;
  final String image;

  RecommendedItem({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  factory RecommendedItem.fromJson(Map<String, dynamic> json) {
    return RecommendedItem(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}