import 'package:flutter/cupertino.dart';

class HealthWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Healthy weight for the height:",
          style: TextStyle(
            color: Color(0xFF0A1207),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),),
        Text(
          "53.5 kg - 72.3 kg",
          style: TextStyle(
            color: Color(0xFF519234),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),),

      ],
    );
  }
}
