import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hd_products/model/product_model.dart';
import 'package:hd_products/screens/des_screen.dart';

class CustomWidgets extends StatefulWidget {
  final ProductModel productModel;
  const CustomWidgets({required this.productModel});

  @override
  State<CustomWidgets> createState() => _CustomWidgetsState();
}

class _CustomWidgetsState extends State<CustomWidgets> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      color: Color(0xFFCDB6CA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.network(widget.productModel.image,),
          IconButton(
            onPressed: () {
              isSelected = !isSelected;
              setState(() {});
            },
            icon: Row(
              children: [
                Icon(
                  isSelected ? Icons.favorite_border : Icons.favorite,
                  color: isSelected ? Colors.red : Colors.grey,
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return DesScreen(productModel: widget.productModel);
                        },));
                  },
                  child: Text(
                    widget.productModel.brand,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: const EdgeInsets.all(60),
                  child: Image.network(
                    widget.productModel.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),

              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                widget.productModel.description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.black54,
                  child: Row(
                    children: [
                      Text(
                        widget.productModel.category,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                      Text(
                        "\$${widget.productModel.price.toString()}",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
