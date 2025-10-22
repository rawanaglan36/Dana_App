import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final  TextEditingController controller;
  final String label;
  final String hintText;
  final IconData prefixIcon;
  final TextInputType textInputType;
  String? Function(String?)?validator;

   CustomTextForm({required this.validator,

     required this.textInputType,
   required this.label,
   required this.hintText,
   required this.prefixIcon,
   required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                label: Text(label),
                hintText: hintText,
                prefixIcon:  Icon(prefixIcon),
                suffixIcon: IconButton(
                    onPressed: () {
                      controller.clear();
                    },
                    icon:  Icon(Icons.clear))),
            controller: controller,
          ),
          // IconButton(
          //     onPressed: () {
          //       if (formKey.currentState!.validate()) {
          //         // print(email.text);
          //       }
          //     },
          //     icon: IconButton(
          //         onPressed: () {}, icon: const Icon(Icons.login_outlined))),
        ],
      ),
    );
  }
}
