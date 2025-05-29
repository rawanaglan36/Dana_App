import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_nti/model/category_call.dart';

import '../model/list_tile_model.dart';

class ItemCall extends StatelessWidget {
  final CategoryCall categoryCall;
  const ItemCall({required this.categoryCall});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey[850],
        backgroundImage: AssetImage(categoryCall.image),
      ),

      title: Text(

        categoryCall.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),

      ),
      subtitle: Text(
        overflow: TextOverflow.ellipsis,
        categoryCall.subTitle,
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 16,
          fontWeight: FontWeight.w400,

        ),

      ),
        trailing: categoryCall.textTrailing
    );
  }
}
