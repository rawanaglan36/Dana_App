import 'package:danaa/views/screens/sign_up/Child_InfoScreen.dart';
import 'package:danaa/views/widgets/custom_label.dart';
import 'package:danaa/views/widgets/custom_next.dart';
import 'package:danaa/views/widgets/custom_textForm.dart';
import 'package:flutter/material.dart';
import '../../../App_style/app_assets.dart';
import '../../../App_style/app_colors.dart';


class PersonalInformation extends StatelessWidget {
  static const String routeName = 'PersonalInformation';

  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:14 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: height * 0.06),
            CustomLabel(textOne: 'خلينا نتعرف عليك',

                textTwo: 'املأ بياناتك الأساسية عشان نقدر نجهزلك تجربة تناسبك وتساعدك\nتتابع صحة ولادك بسهولة'),
            CustomTextform(
              text: 'اسم ولي الامر بالكامل',
              hintText: 'أدخل اسمك رباعي',
            ),
            CustomTextform(text: 'المحافظة', hintText: 'أختر محافظتك',icon: Icons.keyboard_arrow_down),
            CustomTextform(text: 'العنوان', hintText: 'أدخل عنوانك بالتفصيل'),
            SizedBox(height: height * 0.06),
            CustomNext(onTap: (){
              Navigator.of(context).pushNamed(ChildInfoScreen.routeName);
            },icon: Icons.arrow_back_ios_new_rounded,
                text: 'التالي'
            ),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(color: AppColors.lightGreyColor, thickness: 2),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'سجّل بالطريقة اللي تريحك',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Divider(color: AppColors.lightGreyColor, thickness: 2),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightGreyColor,
                    borderRadius: BorderRadius.circular(17),
                  ),

                  child: Image.asset(AppAssets.apple),
                ),
                SizedBox(width: width * 0.04),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightGreyColor,
                    borderRadius: BorderRadius.circular(17),
                  ),

                  child: Image.asset(AppAssets.google),
                ),
              ],
            ),
            SizedBox(height: height * 0.057),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' سجّل دخول',
                    style: TextStyle(color: AppColors.greenColor),
                  ),
                  Text(
                    'عندك حساب؟',

                    style: TextStyle(color: AppColors.darkGreyColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
