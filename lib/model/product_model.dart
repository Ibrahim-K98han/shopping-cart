class Product {
  final String image;
  final String name;
  final double price;
  final String color;
  final String size;
  int quantity;

  Product({
    required this.image,
    required this.name,
    required this.price,
    required this.color,
    required this.size,
    this.quantity = 0,
  });
}
