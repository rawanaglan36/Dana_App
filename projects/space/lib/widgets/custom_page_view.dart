import 'package:flutter/cupertino.dart';
import 'package:space/widgets/planet_card.dart';

class CustomPageView extends StatelessWidget {
  @override
  final PageController pageController=PageController();
  final String image;
  final String name;
   CustomPageView ({required this.image,required this.name});

  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,

      scrollDirection: Axis.horizontal,

      children: [
        PlanetCard(image: image, name: name)

      ],
    );
  }

}
