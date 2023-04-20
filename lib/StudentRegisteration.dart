import 'package:flutter/material.dart';
import 'package:mm/AddAccountView.dart';
import 'package:mm/CustomButton.dart';
import 'package:mm/Styles.dart';

import 'CustomInputUser.dart';
import 'TileStudentInformation.dart';
import 'UpdateAccount.dart';

class StudentRegisteration extends StatelessWidget {
  const StudentRegisteration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Student Registeration',
                style: Styles.textStyle25,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Spacer(),
                  CustomButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const AddAccountView();
                        }));
                      },
                      text: 'Add Account'),
                  const Spacer(),
                  CustomButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const UpdateAccountView()));
                      },
                      text: 'Update Account'),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: CustomInputUser(
                      editingController: TextEditingController(),
                      text: 'NAME',
                      hinttext: 'Enter Student Name...',
                      textInputType: TextInputType.name,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomInputUser(
                      editingController: TextEditingController(),
                      text: 'STUDENT ID',
                      hinttext: 'Enter Student Id...',
                      textInputType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: CustomInputUser(
                      editingController: TextEditingController(),
                      text: 'PHONE',
                      hinttext: 'Enter Student Phobe...',
                      textInputType: TextInputType.phone,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomInputUser(
                      editingController: TextEditingController(),
                      text: 'STATUS',
                      hinttext: 'Enter Student Status...',
                      textInputType: TextInputType.name,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  color: Colors.blueGrey.withOpacity(0.4),
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(top: 5),
                      itemBuilder: (context, index) {
                        return const TileStudentInformation();
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
