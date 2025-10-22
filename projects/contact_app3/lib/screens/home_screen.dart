import 'dart:io';
import 'package:contact_app3/Utils/app_assets.dart';
import 'package:contact_app3/Utils/app_colors.dart';
import 'package:contact_app3/model/categoryMpdel.dart';
import 'package:contact_app3/widgets/contact_widgets.dart';
import 'package:contact_app3/widgets/floating_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  File ?file;
  getImage()async{
    final ImagePicker picker = ImagePicker();

    final XFile? imageGallery = await picker.pickImage(source: ImageSource.gallery);
    file=File(imageGallery!.path);
    setState(() {

    });
  }

List<ContactModel>contact=[];




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15,top: 12),
            child: Image.asset(AppAssets.route,
            width: 117.w,
            height: 39.h,),
          ),
          leadingWidth:120.w ,
        ),
     body: contact.isEmpty?
     ContactWidgets()
         :
     ListView.builder(
       itemCount: contact.length,
         itemBuilder: (context, index) {
           return FloatingSheet();
         },)
        ,
       )
      );

  }
}
