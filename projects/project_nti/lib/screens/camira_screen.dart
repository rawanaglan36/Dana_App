import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CamiraScreen extends StatefulWidget {

  @override
  State<CamiraScreen> createState() => _CamiraScreenState();
}

class _CamiraScreenState extends State<CamiraScreen> {
final ImagePicker imagePicker =ImagePicker();

File?imageFile;

addImage()async{
  final image=await imagePicker.pickImage(source: ImageSource.camera);
  imageFile=File(image!.path);
  setState(() {

  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
         imageFile == null?Text('selectImage'):Image.file(imageFile!),
          const Text('Image'),
          IconButton(onPressed: (){
            addImage();
          },
              icon: const Icon(Icons.camera))
        ],
      ),
    );
  }
}
