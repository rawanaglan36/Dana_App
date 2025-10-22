import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_nti/core/favorites/auth/cubit/auth_cubit.dart';
import 'package:project_nti/core/favorites/auth/views/screen/login.dart';
import 'package:project_nti/core/widgets/custom-text_form.dart';
import 'package:project_nti/core/widgets/gender_selection.dart';
import 'package:project_nti/core/widgets/validator.dart';

import '../../cubit/auth_state.dart';
import '../../data/auth-data.dart';

class RegisterScreen extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if(state is RegisterSuccessState){
            if(state.data['status']=='success'){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(state.data['message']),
                )
              );
           // Navigator.push(context, MaterialPageRoute(builder: (context) {
           //   return LoginScreen();
           // },));
            }
          }
          if(state is RegisterSuccessState){
            if(state.data['status']=='error'){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(state.data['message']),
                  )
              );
            }
          }
          // TODO: implement listener
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomTextForm(
                    textInputType: TextInputType.name,
                    validator: (value) {
                      return MyValidators.displayNamevalidator(value);
                    },

                    label: "name",
                    hintText: "enter your name",
                    prefixIcon: Icons.person,
                    controller: nameController),
                CustomTextForm(
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      return MyValidators.emailValidator(value);
                    },

                    label: "email",
                    hintText: "enter your email",
                    prefixIcon: Icons.email_outlined,
                    controller: emailController),
                CustomTextForm(textInputType: TextInputType.name,
                    validator: (value) {
                      return MyValidators.passwordValidator(value);
                    },

                    label: "password",
                    hintText: "enter your password",
                    prefixIcon: Icons.password,
                    controller: passwordController),
                CustomTextForm(
                    textInputType: TextInputType.phone,
                    validator: (value) {
                      return MyValidators.phoneValidator(value);
                    },

                    label: "phone",
                    hintText: "enter your phone",
                    prefixIcon: Icons.phone,
                    controller: phoneController),
                CustomTextForm(
                    textInputType: TextInputType.number,
                    validator: (value) {
                      return MyValidators.nationalIdValidator(value);
                    },

                    label: "Id",
                    hintText: "enter your Id",
                    prefixIcon: Icons.sim_card,
                    controller: idController),
                GenderSelection(genderController: genderController),
                IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) {
                    return LoginScreen();
                  },));
                  AuthCubit.get(context).registerCubit(
                      name: nameController.text,
                      phone: phoneController.text,
                      email: emailController.text,
                      nationalId: idController.text,
                      password: passwordController.text,
                      gender: genderController.text.trim());
                },
                    icon: Icon(Icons.login))
              ],
            ),
          );
        },
      ),
    );
  }
}
