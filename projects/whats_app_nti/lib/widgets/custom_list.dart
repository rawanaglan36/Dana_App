import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_nti/model/item_listView.dart';
import 'package:whats_app_nti/widgets/item_listTile.dart';

class CustomList extends StatelessWidget {
  final ItemListView item;
  const CustomList({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(item.image)),
      ),
      child: Stack(
        children: [
          Container(
            height: 500,
            alignment: Alignment.bottomCenter,

            child: Text(
              item.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
