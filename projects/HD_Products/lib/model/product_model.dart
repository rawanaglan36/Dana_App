import 'package:flutter/foundation.dart';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final String brand;
  final double price;
  final String image;

  const ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.brand,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      brand: json['brand'] ?? '',
      image: json['image'] ?? json['thumbnail'] ?? '',
    );
  }
}
