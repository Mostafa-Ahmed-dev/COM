import 'package:flutter/material.dart';
import 'package:mm/CustomButton.dart';
import 'package:mm/CustomInputUser.dart';
import 'package:mm/Styles.dart';
import 'package:mm/SubjectConfirm.dart';

class UpdateAccountView extends StatelessWidget {
  const UpdateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    'mostafa ahmed hassan',
                    style: Styles.textStyle25,
                  ),
                ),
                const SizedBox(height: 10),
                CustomInputUser(
                    text: 'National ID',
                    editingController: TextEditingController(),
                    hinttext: 'National ID',
                    textInputType: TextInputType.text),
                const SizedBox(height: 10),
                CustomInputUser(
                    text: 'ID',
                    editingController: TextEditingController(),
                    hinttext: 'ID',
                    textInputType: TextInputType.text),
                const SizedBox(height: 10),
                CustomInputUser(
                    text: 'Email',
                    editingController: TextEditingController(),
                    hinttext: 'Email',
                    textInputType: TextInputType.text),
                const SizedBox(height: 10),
                const Text(
                  'Gender',
                  style: Styles.textStyle20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (data) {},
                      shape: const CircleBorder(),
                    ),
                    const Text(
                      'Male',
                      style: Styles.textStyle18,
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (data) {},
                      shape: const CircleBorder(),
                    ),
                    const Text(
                      'Female',
                      style: Styles.textStyle18,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                CustomInputUser(
                    text: 'Phone',
                    editingController: TextEditingController(),
                    hinttext: 'Phone',
                    textInputType: TextInputType.text),
                const SizedBox(height: 10),
                CustomInputUser(
                    text: 'Adress',
                    editingController: TextEditingController(),
                    hinttext: 'Adress',
                    textInputType: TextInputType.text),
                const SizedBox(height: 10),
                CustomInputUser(
                    text: 'Gpa',
                    editingController: TextEditingController(),
                    hinttext: 'Gpa',
                    textInputType: TextInputType.text),
                const SizedBox(height: 10),
                CustomInputUser(
                    text: 'Status',
                    editingController: TextEditingController(),
                    hinttext: 'Status',
                    textInputType: TextInputType.text),
                const SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: 250,
                    height: 60,
                    child: CustomButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SubjectConfirm()));
                        },
                        text: 'Confirm'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
