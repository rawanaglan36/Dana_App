import 'package:danaa/views/widgets/custom_label.dart';
import 'package:danaa/views/widgets/custom_next.dart';
import 'package:danaa/views/widgets/custom_textForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePasswordScreen extends StatelessWidget {
 static const String routeName= 'CreatePasswordScreen';

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.06),
              CustomLabel(textOne: 'اختار كلمة سر تحمي حسابك', textTwo: 'خليها سهلة عليك وصعبة على غيرك، عشان تقدر تدخل بأمان في أي وقت.'),
          
              CustomTextform(text: 'كلمة المرور', hintText: 'أدخل كلمة مرور قوية',icon: Icons.visibility),
              CustomTextform(text: 'تأكيد كلمة المرور', hintText: 'أكتب كلمة المرور مره أخري',icon: Icons.visibility),
          
                SizedBox(height: height * 0.46),
          
              CustomNext(onTap: (){},
                  text: 'إنشاء حساب')
          
            ],
          ),
        ),
      ),
    );
  }
}
