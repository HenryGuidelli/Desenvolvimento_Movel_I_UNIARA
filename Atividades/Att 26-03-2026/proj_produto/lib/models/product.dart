class Product {
  final String? id;
  final String name;
  final String description;
  final double price;

  Product({
    this.id,
    required this.name,
    required this.price,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'].toString(),
      name: json['name'],
      price: double.parse(json['price'].toString()),
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'price': price,
    'description': description,
  };
}
