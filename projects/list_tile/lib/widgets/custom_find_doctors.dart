import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_tile/model/item_doctors.dart';
import 'package:list_tile/screens/splash_screen.dart';
import 'package:list_tile/widgets/custom_elevated_button.dart';

class CustomFindDoctors extends StatefulWidget {
  final ItemDoctors itemDoctors;
  const CustomFindDoctors({required this.itemDoctors});

  @override
  State<CustomFindDoctors> createState() => _CustomFindDoctorsState();
}

class _CustomFindDoctorsState extends State<CustomFindDoctors> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 10,
          color: Color(0xFFFFFFFF),
          child: Row(
            children: [
              Column(
                spacing: 4,
                children: [
                  Image.asset(
                    widget.itemDoctors.image,
                    height: 133,
                    width: 120,
                  ),
                  Text(
                    widget.itemDoctors.textOne,
                    style: TextStyle(
                      color: Color(0xFF0EBE7F),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.itemDoctors.textTwo,
                    style: TextStyle(
                      color: Color(0xFF677294),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          widget.itemDoctors.name,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 65),

                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSelected = !isSelected;
                            });
                          },
                          icon: Icon(
                            isSelected ? Icons.favorite : Icons.favorite_border,
                            color: isSelected ? Colors.red : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      widget.itemDoctors.description,
                      style: TextStyle(
                        color: Color(0xFF0EBE7F),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.itemDoctors.experience,
                      style: TextStyle(
                        color: Color(0xFF677294),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    //SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Baseline(
                          baselineType: TextBaseline.alphabetic,
                          baseline: 33,
                          child: Text(
                            ".",
                            style: TextStyle(
                              color: Color(0xFF00EBE7F),
                              fontSize: 65,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          widget.itemDoctors.persentage,
                          style: TextStyle(
                            color: Color(0xFF0EBE7F),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 10),
                        Baseline(
                          baselineType: TextBaseline.alphabetic,
                          baseline: 33,
                          child: Text(
                            ".",
                            style: TextStyle(
                              color: Color(0xFF00EBE7F),
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          widget.itemDoctors.stories,
                          style: TextStyle(
                            color: Color(0xFF0EBE7F),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20,bottom: 10),
                              child: CustomElevatedButton(
                                screens: SplashScreen(),
                              ),

                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
