class OrderItemModel {
  final String title;
  final String subTitle;
  final String imageOrder;
  final double rtaing;
  final double price;
  final bool isFavorite;

  OrderItemModel({
    required this.title,
    required this.subTitle,
    required this.imageOrder,
    required this.rtaing,
    required this.price,
    this.isFavorite = false,
  });
}
