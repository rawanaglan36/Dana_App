import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final TextInputType textInputType;
  String? Function(String?)? validator;
  final void Function(String) onChanged;

  CustomTextForm({
    required this.validator,
    required this.textInputType,
    required this.label,
    required this.hintText,
    required this.controller,
    required IconButton suffixIcon,
    required this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          SizedBox(height: 4.h),
          TextFormField(
            onChanged: onChanged,
            obscureText: false,
            controller: controller,
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              label: Text(label),
              hintText: hintText,
              suffixIcon: IconButton(
                onPressed: () {
                  controller.clear();
                },
                icon: Icon(Icons.clear),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
