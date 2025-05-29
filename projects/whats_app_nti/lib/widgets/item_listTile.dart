import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_nti/model/list_tile_model.dart';

class ItemListtile extends StatelessWidget {
  final ListTileModel listTileModel;
  const ItemListtile({required this.listTileModel});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
          backgroundColor: Colors.grey[850],
        backgroundImage: AssetImage(listTileModel.image),
      ),

      title: Text(

        listTileModel.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),

      ),
      subtitle: Text(
        overflow: TextOverflow.ellipsis,
        listTileModel.subTitle,
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 16,
          fontWeight: FontWeight.w400,

        ),

      ),
      trailing: Text(
        listTileModel.textTrailing,
        style: TextStyle(
            color: Colors.grey[400],
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
