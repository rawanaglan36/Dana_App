import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Newstile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset("assets/images/business.avif"),
        ),
        Text(
          "KLLDL;D;;DJFLL;;ADSMV FGH NCML;SK>SLJFkka;;;d;;fknfnvnm ,,,,cnn",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "KLLDL;D;;DJFLL;;ADSMV",
          style: TextStyle(color: Colors.grey, fontSize: 24),
        ),
      ],
    );
  }
}
