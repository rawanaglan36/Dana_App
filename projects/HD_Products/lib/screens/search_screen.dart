import 'package:flutter/material.dart';
import 'package:hd_products/model/product_model.dart';

import 'package:flutter/material.dart';
import 'package:hd_products/model/product_model.dart';

class SearchScreen extends StatefulWidget {
  final List<ProductModel> products;

  const SearchScreen({super.key, required this.products});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String query = "";

  @override
  Widget build(BuildContext context) {
    final results = widget.products
        .where((p) => p.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFCDB6CA),
        title: TextField(
          decoration: const InputDecoration(
            hintText: "Search",
            border: InputBorder.none,
          ),
          onChanged: (value) {
            setState(() {
              query = value;
            });
          },
        ),
        actions: [
          if (query.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                setState(() {
                  query = "";
                });
              },
            )
        ],
      ),
      body: results.isEmpty
          ? const Center(child: Text(""))
          : ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          final product = results[index];
          return ListTile(
            title: Text(product.title),
            subtitle: Text(product.brand),
            leading: Image.network(product.image, width: 40, height: 40),
          );
        },
      ),
    );
  }
}





