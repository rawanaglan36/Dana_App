import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_nti/model/list_tile_model.dart';
import 'package:whats_app_nti/widgets/item_customtextForm.dart';
import 'package:whats_app_nti/widgets/item_listTile.dart';
import 'package:whats_app_nti/widgets/item_row.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<ListTileModel> model = [
    ListTileModel(
      image: "assets/images/earth 1 (1).png",
      text: "Earth",
      subTitle: "Our home planet",
      textTrailing: "9:00 PM",
    ),
    ListTileModel(
      image: "assets/images/jupiter (1).png",
      text: "Jupiter",
      subTitle: "The largest planet",
      textTrailing: "Yesterday",
    ),
    ListTileModel(
      image: "assets/images/mars (1).png",
      text: "Mars",
      subTitle: "The red planet",
      textTrailing: "2:54",
    ),
    ListTileModel(
      image: "assets/images/mercury (2).png",
      text: "Mercury",
      subTitle: "The smallest planet",
      textTrailing: "2:18AM",
    ),
    ListTileModel(
      image: "assets/images/neptune (1).png",
      text: "Neptune",
      subTitle: "The windy planet",
      textTrailing: "14/08/2025",
    ),
    ListTileModel(
      image: "assets/images/saturn (1).png",
      text: "Saturn",
      subTitle: "Famous for its rings",
      textTrailing: "1:00",
    ),
    ListTileModel(
      image: "assets/images/sun (1).png",
      text: "Sun",
      subTitle: "The star of our system",
      textTrailing: "2/2/2024",
    ),
    ListTileModel(
      image: "assets/images/uranus (1).png",
      text: "Uranus",
      subTitle: "An ice giant",
      textTrailing: "4:15",
    ),
    ListTileModel(
      image: "assets/images/venus (1).png",
      text: "Venus",
      subTitle: "The hottest planet",
      textTrailing: "7:00Am",
    ),
    ListTileModel(
      image: "assets/images/color_brown.png",
      text: "Brown",
      subTitle: "Warm earthy color",
      textTrailing: "5/6/2024",
    ),
    ListTileModel(
      image: "assets/images/color_dusty_yellow.png",
      text: "DustyYellow",
      subTitle: "A pale yellow shade",
      textTrailing: "2026",
    ),
    ListTileModel(
      image: "assets/images/color_gray.png",
      text: "Gray",
      subTitle: "Neutral and balanced",
      textTrailing: "7:00Am",
    ),
    ListTileModel(
      image: "assets/images/color_red.png",
      text: "Red",
      subTitle: "Color of passion",
      textTrailing: "4:00Am",
    ),
    ListTileModel(
      image: "assets/images/color_white.png",
      text: "White",
      subTitle: "Color of purity",
      textTrailing: "5:18Am",
    ),
    ListTileModel(
      image: "assets/images/Ellipse 1 (1).png",
      text: "Messi",
      subTitle: "Football player",
      textTrailing: "7:00Am",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("")),

        drawer: Drawer(
          backgroundColor: Color(0xFF1F2C34),
          //Color(0xFF121B22),
          child: Column(children: [Image.asset("assets/images/nti.png")]),
        ),
        backgroundColor: Color(0xFF121B22),

        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              ItemRow(),
              SizedBox(height: 20),
              ItemCustomtextform(),

              Expanded(
                child: ListView.builder(
                  itemCount: model.length,
                  itemBuilder: (context, index) {
                    return ItemListtile(listTileModel: model[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
