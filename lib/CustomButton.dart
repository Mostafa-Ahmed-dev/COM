import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor = Colors.black,
    required this.onPressed,
    required this.text,
    this.textColor = Colors.white,
  });
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.deepPurple,
        foregroundColor: Colors.deepPurple[100],
        backgroundColor: backgroundColor,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: textColor,
        ),
      ),
    );
  }
}
