import 'package:danaa/App_style/app_colors.dart';
import 'package:danaa/views/screens/sign_up/Create_Password_Screen.dart';
import 'package:danaa/views/widgets/custom_label.dart';
import 'package:danaa/views/widgets/custom_next.dart';
import 'package:danaa/views/widgets/custom_textForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInfoscreen extends StatelessWidget {
  static const String routeName='ContactInfoScreen';

  const ContactInfoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: height * 0.06),
            CustomLabel(textOne: 'إزاي نقدر نتواصل معاك؟',
                textTwo: 'اكتب رقمك وبريدك عشان نقدر نبعتلك التحديثات والتنبيهات المهمة\nأول بأول.'),

            CustomTextform(text: 'البريد الألكتروني', hintText: 'أدخل البريد الألكتروني'),
            SizedBox(height: height * 0.46),
            CustomNext(onTap: (){
Navigator.of(context).pushNamed(CreatePasswordScreen.routeName);
            }, text: 'أحصل علي رمز التأكيد',icon: Icons.arrow_back_ios_new_rounded,)
          ],
        ),
      ),


    );
  }
}
