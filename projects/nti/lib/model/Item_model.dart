class ItemModel{
  final String title;
  final String description;
  final double price;
  final int id;
  final String image;
  const ItemModel({
    required this.price,
    required this.image,
    required this.description,
    required this.title,
    required this.id,
});
  // factory ItemModel.fromJson(Map<String,dynamic>json){
  //   return ItemModel(price:json ['price'],
  //       image:json ['image'],
  //       description: json['description'],
  //       title: json['title'],
  //       id: json['id']);
  // }
  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      price: (json['price'] ?? 0).toDouble(), // لو null يخليه 0
      image: json['image'] ?? "",             // لو null يخليه فاضي
      description: json['description'] ?? "",
      title: json['title'] ?? "",
      id: json['id'] ?? 0,
    );
  }

}