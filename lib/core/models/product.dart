class Product {
  final String image;
  final String title;
  final String price;

  Product({
    required this.image,
    required this.title,
    required this.price,
  });
}

class Products {
  static List<Product> products = [
    Product(image: 'lamp', title: 'Black Simple Lamp', price: '\$12.00'),
    Product(image: 'stand', title: 'Minimal Stand', price: '\$25.00'),
    Product(image: 'coffee_chair', title: 'Coffee Chair', price: '\$20.00'),
    Product(image: 'simple_desk', title: 'Simple Desk', price: '\$50.00'),
  ];
}
