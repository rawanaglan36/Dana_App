import 'dart:convert';

///factorey=>return Constractor
///constractor=>fromjeson
///json==item
class ProdecutModel {
  final String status;

  final String id;

  final String category;
  final String name;
  final num price;

  final String image;

  const ProdecutModel({
    required this.status,

    required this.id,

    required this.category,
    required this.name,
    required this.price,

    required this.image,
  });
  factory ProdecutModel.fromJson(Map<String, dynamic> json) {
    return ProdecutModel(
      status: json['status'],

      id: json['_id'],
      category: json['category'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
}
