import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_tile/model/customWidget.dart';

class CategoryItem extends StatefulWidget {
  final CustomWidget customWidget;
  CategoryItem({required this.customWidget});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  bool isSelected=true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 0),
      child: Card(
        elevation: 10,
        child: SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(widget.customWidget.image, height: 100, width: 100),
              SizedBox(width: 10),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      widget.customWidget.text,
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.customWidget.description,
                      style: TextStyle(
                        color: Color(0xFF677294),
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.grey),
                      ],
                    ),
                    SizedBox(width: 20),
                    Text(widget.customWidget.bottomText, textAlign: TextAlign.end),
                  ],
                ),
              ),

              IconButton(onPressed:() {
                isSelected=!isSelected;
                setState(() {

                });
              },
                icon: Icon(
                  isSelected ? Icons.favorite : Icons.favorite_border,
                  color: isSelected ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
