
class ProductModel {
  final String image;
  final String article;
  final String title;
  final String oldPrice;
  final String price;
  final String discount;
  final bool isHit;

  ProductModel({
    required this.image,
    required this.article,
    required this.title,
    required this.oldPrice,
    required this.price,
    required this.discount,
    required this.isHit,
  });
}