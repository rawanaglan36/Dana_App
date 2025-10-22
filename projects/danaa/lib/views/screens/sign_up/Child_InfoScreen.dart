import 'package:danaa/App_style/app_colors.dart';
import 'package:danaa/views/widgets/custom_gender_selection.dart';
import 'package:danaa/views/widgets/custom_label.dart';
import 'package:danaa/views/widgets/custom_next.dart';
import 'package:danaa/views/widgets/custom_textForm.dart';
import 'package:flutter/material.dart';
import 'Contact_InfoScreen.dart';

class ChildInfoScreen extends StatelessWidget {
  static const String routeName = 'ChildInfoScreen';

  const ChildInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: height * 0.06),
              CustomLabel(
                textOne: 'ضيف أولادك وابدأ رحلتك معاهم',
                textTwo: 'ابدأ دلوقتي وخلي كل حاجة تخص ولادك قريبة منك دايمًا',
              ),
              CustomTextform(text: 'اسم الطفل', hintText: 'أدخل اسم ابنك'),
              CustomTextform(
                text: 'تاريخ ميلاده',
                hintText: 'أختر تاريخ الميلاد',
                icon: Icons.calendar_today_outlined,
          
              ),
              CustomGenderSelection(),
              SizedBox(height: height * 0.02),
              CustomTextform(
                text: 'فصيلة الدم',
                hintText: 'أختر فصيلة الدم',
                icon: Icons.arrow_back_ios_new_rounded,
              ),
          
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('عايز تضيف طفل تاني؟'),
                  SizedBox(width: width * 0.011),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
          
                    child: Icon(Icons.add, color: AppColors.lightGreyColor),
                  ),
                ],
              ),
              SizedBox(height: height * 0.18),
              CustomNext(
                onTap: () {
                  Navigator.of(context).pushNamed(ContactInfoscreen.routeName);
                },
                text: 'التالي',
          
               icon: Icons.arrow_back_ios_new_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
