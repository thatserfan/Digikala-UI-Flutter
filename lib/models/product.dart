class Product {
  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    this.beforePrice = -1,
    this.hasOffer = false,
    required this.imagePaths,
  });

  final String id;
  final String title;
  final String description;
  final List<String> category;
  final int price;
  final int beforePrice;
  final bool hasOffer;
  final List<String> imagePaths;
}
