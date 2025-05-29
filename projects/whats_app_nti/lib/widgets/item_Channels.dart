import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_nti/model/list_tile_model.dart';
import 'package:whats_app_nti/widgets/item_listTile.dart';

class ItemChannels extends StatelessWidget {
final ListTileModel listTileModel;
const ItemChannels({required this.listTileModel});

  @override
  Widget build(BuildContext context) {
    return    ListTile(
      leading: CircleAvatar(
        radius: 25,
        child: ClipRRect(borderRadius:BorderRadius.circular(50),
            child: Image.asset(listTileModel.image),
      ),
      ),

      title:  Text(

        listTileModel.text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),

      ),
      subtitle: Text(
        listTileModel.subTitle,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          fontWeight: FontWeight.w300,

        ),

      ),
      trailing: Text(
        listTileModel.textTrailing,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
