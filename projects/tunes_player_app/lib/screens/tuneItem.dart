import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/model/itemModel.dart';

class Tuneitem extends StatelessWidget {
  ItemModel tune;

  Tuneitem({super.key, required this.tune});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource(tune.sound));
        },
        child: Container(color: tune.color),
      ),
    );
  }
}
