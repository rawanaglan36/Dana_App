import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_tile/model/item_doctors.dart';
import 'package:list_tile/screens/splash_screen.dart';
import 'package:list_tile/widgets/custom_find_doctors.dart';
import 'package:list_tile/widgets/custom_textForm.dart';

class FindDoctors extends StatefulWidget {
  @override
  State<FindDoctors> createState() => _FindDoctorsState();
}

class _FindDoctorsState extends State<FindDoctors> {
  int currentIndex = 0;
  List<ItemDoctors> itemList = [
    ItemDoctors(
      description: "Tooths Dentist",
      image: "assets/images/4.jpg",
      textOne: "Next Available ",
      textTwo: "10:00 AM tomorrow",
      name: 'Dr. Shruti Kedia',
      experience: "7 Years experience ",
      persentage: "87%",
      stories: "69 Patient Stories",
    ),
    ItemDoctors(
      description: "Tooths Dentist",
      image: "assets/images/2.png",
      textOne: "Next Available ",
      textTwo: '12:00 AM tomorrow',
      name: "Dr. Watamaniuk",
      experience: "9 Years experience ",
      persentage: "74%",
      stories: "78 Patient Stories",
    ),
    ItemDoctors(
      description: "Tooths Dentist",
      image: "assets/images/3.png",
      textOne: "Next Available ",
      textTwo: "11:00 AM tomorrow",
      name: 'Dr. Crownover',
      experience: "5 Years experience ",
      persentage: "59%",
      stories: "86 Patient Stories",
    ),
    ItemDoctors(
      description: "Tooths Dentist",
      image: "assets/images/Rectangle 506 (7).png",
      textOne: "Next Available ",
      textTwo: "11:00 AM tomorrow",
      name: 'Dr. Balestra',
      experience: "6 Years experience ",
      persentage: "59%",
      stories: "86 Patient Stories",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        backgroundColor: Colors.teal.shade50,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 70,

          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SplashScreen();
                  },
                ),
              );
            },

            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            "Find Doctors",
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(7),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),

                  child: CustomTextform(),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(height: 5),
                          CustomFindDoctors(itemDoctors: itemList[index]),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
