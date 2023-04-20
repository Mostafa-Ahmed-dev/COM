import 'package:flutter/material.dart';

import 'Styles.dart';

class CustomElementSubject extends StatelessWidget {
  const CustomElementSubject({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Subject 1:',
        ),
        Container(
          color: Colors.amber,
          child: const Text(
            'CCE412: Mobile Computing',
            style: Styles.textStyle18,
          ),
        ),
        Checkbox(value: true, onChanged: (value) {}),
        IconButton(onPressed: () {}, icon: const Icon(Icons.error_outline))
      ],
    );
  }
}
