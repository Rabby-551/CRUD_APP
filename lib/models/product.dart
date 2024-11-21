class Product {
  final String id;
  final String productName;
  final String productCode;
  final String productImage;
  final String unitPrice;
  final String totalPrice;
  final String createAt;
  final String quantity;

  Product(
      {required this.id,
      required this.productName,
      required this.productCode,
      required this.productImage,
      required this.unitPrice,
      required this.totalPrice,
      required this.createAt,
      required this.quantity});
}
