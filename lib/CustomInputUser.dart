import 'package:flutter/cupertino.dart';
import 'package:mm/Styles.dart';

import 'CustomTextFormField.dart';

class CustomInputUser extends StatelessWidget {
  const CustomInputUser(
      {super.key,
      required this.text,
      required this.editingController,
      required this.hinttext,
      required this.textInputType});
  final String text;
  final TextEditingController editingController;
  final String hinttext;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.textStyle20,
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
            textInputType: textInputType,
            controller: editingController,
            hintText: hinttext,
            validator: (data) {
              return null;
            })
      ],
    );
  }
}
