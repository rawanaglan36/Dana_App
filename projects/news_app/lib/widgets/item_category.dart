import 'package:flutter/cupertino.dart';

import 'newsTile.dart';

class ItemCategory extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22.0),
            child: Newstile(),
          );
        }
    );
  }
}
