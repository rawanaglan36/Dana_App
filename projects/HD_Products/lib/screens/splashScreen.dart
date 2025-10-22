import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hd_products/screens/Nav_screen.dart';
import 'package:hd_products/model/product_model.dart';
import 'package:hd_products/services/data.dart'; // افتراضي getData() هنا

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () async {

      List<ProductModel> products = await getData();

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => NavScreen(products: products),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFCDB6CA),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
                  "assets/images/makeUpp.png",
                  fit: BoxFit.fill,
                )),
            const SizedBox(height: 30),
            const SpinKitWave(
              color: Colors.white38,
              size: 100,
            )
          ],
        ),
      ),
    );
  }
}

