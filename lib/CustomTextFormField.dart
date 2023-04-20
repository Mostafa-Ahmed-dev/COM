import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.validator,
      required this.textInputType});
  //
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  //
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: textInputType,
        validator: validator,
        maxLines: 1,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 12, color: Colors.grey),
          labelStyle: const TextStyle(color: Colors.black),
          enabledBorder: buildBorder(Colors.black),
          focusedBorder: buildBorder(Colors.deepPurple),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
