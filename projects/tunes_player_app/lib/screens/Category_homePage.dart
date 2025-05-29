import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/model/itemModel.dart';
import 'package:tunes_player_app/screens/tuneItem.dart';

class CategoryHomepage extends StatelessWidget {
  final List<ItemModel> tuneColors = [
    ItemModel(
      color: Colors.purpleAccent,
      sound: 'sounds/tunes_player_app_assets_note1 (1).wav',
    ),
    ItemModel(color: Colors.yellow, sound: 'sounds/note2.wav'),
    ItemModel(
      color: Colors.green,
      sound: 'sounds/tunes_player_app_assets_note3.wav',
    ),
    ItemModel(color: Colors.pinkAccent, sound: 'sounds/note4.wav'),
    ItemModel(color: Colors.tealAccent, sound: 'sounds/note5.wav'),
    ItemModel(color: Colors.grey, sound: 'sounds/note6.wav'),
    ItemModel(color: Colors.blueAccent, sound: 'sounds/note7.wav'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Flutter Tune",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: tuneColors.map((e) => Tuneitem(tune: e)).toList(),
      ),
    );
  }
}
