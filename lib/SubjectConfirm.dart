import 'package:flutter/material.dart';
import 'package:mm/CustomButton.dart';
import 'package:mm/Styles.dart';

import 'CustomElementSubject.dart';

class SubjectConfirm extends StatelessWidget {
  const SubjectConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                child: const Text('mostafa ahmed hassan',
                    style: Styles.textStyle25),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Spacer(),
                  const Text(
                    'Hours',
                    style: Styles.textStyle18,
                  ),
                  Container(
                    color: Colors.grey.withOpacity(0.5),
                    child: const Text(
                      '121',
                      style: Styles.textStyle18,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  const Text(
                    'GPA',
                    style: Styles.textStyle18,
                  ),
                  Container(
                    color: Colors.grey.withOpacity(0.5),
                    child: const Text(
                      '3.5',
                      style: Styles.textStyle18,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => const CustomElementSubject(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: 7),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Spacer(),
                  CustomButton(onPressed: () {}, text: 'Approve All'),
                  const Spacer(flex: 2),
                  CustomButton(onPressed: () {}, text: 'Reject All'),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(onPressed: () {}, text: 'Submit'),
              const SizedBox(
                height: 25,
              ),
              CustomButton(onPressed: () {}, text: 'Back'),
            ],
          ),
        ),
      ),
    );
  }
}
