class ItemModel{
  final String title;
  final String description;
  final String category;
  final num price;
  final String images;

  ItemModel({required this.title,
    required this.description,
    required this.category,
    required this.price, required this.images});
  factory ItemModel .fromJson(Map<String,dynamic>json){
    return ItemModel(
        title: json['title'],
        description:json ['description'],
        category:json ['category'],
        price: json['price'],
        images:json ['images']);
  }


}