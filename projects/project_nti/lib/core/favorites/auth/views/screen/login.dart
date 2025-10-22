import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_nti/core/widgets/custom-text_form.dart';
import 'package:project_nti/core/widgets/validator.dart';
import 'package:project_nti/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
        title: const Text(
          "Login",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
      ),
      body: Column(
        children: [
     CustomTextForm(textInputType: TextInputType.emailAddress,
         validator: (email){
       if(email!.isEmpty){
         return MyValidators.emailValidator(email);

       }
     },
         // formKey: formKey,
         label: "Email",
         hintText: 'enter your email',
         prefixIcon: Icons.email,
         controller: email),
          SizedBox(height: 20,),
          CustomTextForm(textInputType: TextInputType.name,
              validator: (password){
            if(password!.length<10){
              return

                MyValidators.passwordValidator(password);
            }
            return null;
          },
              // formKey: formKey,
              label: "Password",
              hintText: 'enter your password',
              prefixIcon: Icons.password,
              controller: password),
          IconButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // print(email.text);
                }
              },
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) {
                      return HomeScreen();
                    },));
                  }, icon: const Icon(Icons.login_outlined))),
        ],
      )
    );
  }
}
