import 'dart:io';
import 'package:contact_app3/widgets/Custom_Text_Form.dart';
import 'package:contact_app3/widgets/customElevetedButton.dart';
import 'package:contact_app3/widgets/validators.dart';
import 'package:contact_app3/widgets/widgetsImagePacker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import '../Utils/app_colors.dart';

class FloatingSheet extends StatefulWidget {


  @override
  State<FloatingSheet> createState() => _FloatingSheetState();
}

class _FloatingSheetState extends State<FloatingSheet> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneCController = TextEditingController();


  File? file;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17),
      child: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          elevation: 1,
          backgroundColor: AppColors.Gold,
          onPressed: () async{
            ImagePicker picker = ImagePicker();
            file=(await picker.pickImage(source: ImageSource.gallery)) as File?;
           setState(() {

           });
            showModalBottomSheet(
              backgroundColor: AppColors.primaryColor,
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Widgetsimagepacker(),
                        CustomTextForm(
                          onChanged:setName ,
                          validator: (name) {
                            return MyValidators.displayNamevalidator(name);
                          },
                          textInputType: TextInputType.name,
                          label: "name",
                          hintText: "Enter user Name",
                          controller: nameController,
                          suffixIcon: IconButton(
                            onPressed: () => nameController.clear(),
                            icon: Icon(Icons.clear),
                          ),
                        ),
                        SizedBox(height:16.h),
                        CustomTextForm(
                          onChanged: setEmail,
                          validator: (email) {
                            return MyValidators.emailValidator(email);
                          },
                          textInputType: TextInputType.emailAddress,
                          label: "email",
                          hintText: "Enter user Email",
                          controller: emailController,
                          suffixIcon: IconButton(
                            onPressed: () => emailController.clear(),
                            icon: Icon(Icons.clear),
                          ),
                        ),
                        SizedBox(height:16.h),
                        CustomTextForm(
                          onChanged:setPhone ,
                          validator: (phone) {
                            return MyValidators.phoneValidator(phone);
                          },
                          textInputType: TextInputType.phone,
                          label: "phone",
                          hintText: "Enter user Phone",
                          controller: phoneCController,
                          suffixIcon: IconButton(
                            onPressed: () => phoneCController.clear(),
                            icon: Icon(Icons.clear),
                          ),
                        ),
                        SizedBox(height:16.h),
                       Customelevetedbutton()
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Icon(Icons.add, color: AppColors.primaryColor),
        ),
      ),
    );
  }
  void setName(String value){
    setState(() {

    name =value;
    });

  }
  void setEmail(String value){
    setState(() {

      email=value;
    });

  }
  void setPhone(String value){
    setState(() {

      phone =value;
    });

  }


}
