class ItemModel {
  final String status;
  // final String message;
  final String id;
  final String category;
  final String name;
  final num price;
  final String description;
  final String image;

  ItemModel({
    required this.status,
    // required this.message,
    required this.category,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.id,
  });
  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      status: json['status'],
      // message: json['message'],
      category: json['category'],
      name: json['name'],
      price: json['price'],
      description: json['description'],
      image: json['image'],
      id: json['_id'],
    );
  }
}
