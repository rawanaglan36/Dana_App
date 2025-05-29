import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_flutter_one/widgets/category_home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.notifications, color: Colors.white, size: 35),
        title: Text(
          "Coding Developer",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        spacing: 20,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryHome(
                text: "اداره المتاجر",
                color: Colors.blueAccent,
                icon: Icons.store,
              ),
              CategoryHome(
                text: "التقارير التافصيليه",
                color: Colors.green,
                icon: Icons.baby_changing_station,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryHome(
                text: "اضافه ادمن جديد",
                color: Colors.purple,
                icon: Icons.person_add,
              ),
              CategoryHome(
                text: " اداره السايقين ",
                color: Colors.orange,
                icon: Icons.store,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryHome(
                text: "طلبات فتح حساب",
                color: Colors.redAccent,
                icon: Icons.assignment,
              ),
              CategoryHome(
                text: "البروفايل ",
                color: Colors.cyan,
                icon: Icons.person,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryHome(
                text: " تاكيد تسليم الطلبات",
                color: Colors.redAccent,
                icon: Icons.assignment,
              ),
              CategoryHome(
                text: "حسابات المستخدمين",
                color: Colors.amber,
                icon: Icons.manage_accounts_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
