import 'package:flutter/material.dart';
import 'package:hd_products/model/product_model.dart';
import 'package:hd_products/screens/home_screen.dart';
import 'package:hd_products/screens/search_screen.dart';


class NavScreen extends StatefulWidget {
  final List<ProductModel> products;

  const NavScreen({super.key, required this.products});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeScreen(),
      SearchScreen(products: widget.products),

    ];

    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        unselectedItemColor: const Color(0xFFCDB6CA),
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),

        ],
      ),
    );
  }
}



