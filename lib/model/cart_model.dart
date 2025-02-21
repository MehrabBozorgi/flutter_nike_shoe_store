class CartModel {
  final String name;
  final String price;
  final String image;
  final int count;

  CartModel({
    required this.name,
    required this.price,
    required this.image,
    required this.count,
  });
}

List<CartModel> cartModel = [];
