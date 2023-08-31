class Product {
  const Product({
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.imagePaths,
  });

  final String title;
  final String description;
  final List<String> category;
  final int price;
  final List<String> imagePaths;
}
