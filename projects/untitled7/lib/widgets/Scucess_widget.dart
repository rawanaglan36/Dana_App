import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/character_model.dart';

class ScucessWidget extends StatelessWidget {
  final CharacterModel characterModel;
  const ScucessWidget({required this.characterModel});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(characterModel.name),
          ClipRRect(borderRadius: BorderRadius.circular(80),
              child: Image.network(characterModel.image)),
          Text(characterModel.species),
        ],
      ),
    );
  }
}
