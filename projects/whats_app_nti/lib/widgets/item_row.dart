import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemRow extends StatelessWidget {
  const ItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),

        Icon(Icons.camera_alt_outlined, color: Colors.white, size: 28,),
        SizedBox(width: 20,),
        Icon(Icons.search, color: Colors.white, size: 28),
        SizedBox(width: 20,),
        Icon(Icons.more_vert, color: Colors.white, size: 28),
      ],
    );
  }
}
