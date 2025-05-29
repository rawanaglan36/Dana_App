import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/constant/routes.dart';

class DetailsScreen extends StatefulWidget {
  final String title;
  final String image;
  final String id;
  DetailsScreen({required this.title, required this.id, required this.image});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.teal[300],
        borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
      ),
      height: 170,
      width: double.infinity,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(widget.image),
              ),

              color: Colors.teal[300],
              borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoute.Details,
                arguments: widget.id,
              );
              setState(() {});
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 22),
          ),
        ],
      ),
    );
  }
}
