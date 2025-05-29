import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_nti/model/item_listView.dart';
import 'package:whats_app_nti/widgets/custom_list.dart';
import 'package:whats_app_nti/widgets/item_listTile.dart';

import '../model/list_tile_model.dart';

class UpdateScreen extends StatelessWidget {
  List<ItemListView> update = [
    ItemListView(image: "assets/images/earth 1 (1).png", text: "Earth"),
    ItemListView(image: "assets/images/jupiter (1).png", text: "Jupiter"),
    ItemListView(image: "assets/images/mars (1).png", text: "Mars"),
    ItemListView(image: "assets/images/mercury (2).png", text: "Mercury"),
    ItemListView(image: "assets/images/neptune (1).png", text: "Neptune"),
    ItemListView(image: "assets/images/saturn (1).png", text: "Saturn"),
    ItemListView(image: "assets/images/sun (1).png", text: "Sun"),
    ItemListView(image: "assets/images/uranus (1).png", text: "Uranus"),
    ItemListView(image: "assets/images/venus (1).png", text: "Venus"),
    ItemListView(image: "assets/images/color_brown.png", text: "Brown"),
    ItemListView(
      image: "assets/images/color_dusty_yellow.png",
      text: "DustyYellow",
    ),
    ItemListView(image: "assets/images/color_gray.png", text: "Gray"),
    ItemListView(image: "assets/images/color_red.png", text: "Red"),
    ItemListView(image: "assets/images/color_white.png", text: "White"),
    ItemListView(image: "assets/images/Ellipse 1 (1).png", text: "Messi"),
  ];
  List<ListTileModel> model = [
    ListTileModel(
      image: "assets/images/iti.png",
      text: "ITI",
      subTitle: 'Tech Training Updates',
      textTrailing: '09:45 AM',
    ),
    ListTileModel(
      image: "assets/images/nti.png",
      text: "NTI",
      subTitle: 'Telecom News',
      textTrailing: '10:30 AM',
    ),
    ListTileModel(
      image: "assets/images/الاهلي.png",
      text: "الأهلي",
      subTitle: 'آخر أخبار النادي',
      textTrailing: '12:05 PM',
    ),
    ListTileModel(
      image: "assets/images/Youm7.png",
      text: "اليوم السابع",
      subTitle: 'عاجل: أهم العناوين',
      textTrailing: '01:20 PM',
    ),
    ListTileModel(
      image: "assets/images/qatar.png",
      text: "قطرية",
      subTitle: 'Qatari Airways Deals',
      textTrailing: '02:50 PM',
    ),
    ListTileModel(
      image: "assets/images/1694418694-Depi_main.webp",
      text: "DEPI",
      subTitle: 'Digital Egypt Pioneers',
      textTrailing: '04:15 PM',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121B22),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),backgroundColor: Colors.grey,),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            SizedBox(height: 33),
            Row(
              children: [
                Text(
                  "Update",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.search, color: Colors.white, size: 28),
                SizedBox(width: 16),
                Icon(Icons.access_time_filled, color: Colors.white, size: 28),

              ],
            ),
            SizedBox(height: 30),
            Text(
              "Status",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: update.length,
                itemBuilder: (context, index) {
                  return CustomList(item: update[index]);
                },
                separatorBuilder: (context, index) {
                  return VerticalDivider(
                    color: Colors.transparent,
                    thickness: 1,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Channels",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                ElevatedButton(onPressed: (){},
                    child: Text("Explore",style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),)),
              ],
            ),
        Expanded(
          child: ListView.builder(
            itemCount: model.length,
              itemBuilder: (context, index) {
                return ItemListtile(listTileModel: model[index]);
              },),
        )


          ],
        ),
      ),
    );
  }
}
