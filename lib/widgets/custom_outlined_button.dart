import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.btnText,
    required this.onButtonPressed,
  });

  final VoidCallback onButtonPressed;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xff343434),
        side: const BorderSide(
          color: Colors.yellow,
        ),
        minimumSize: Size(
          MediaQuery.of(context).size.width * 0.7,
          56,
        ),
      ),
      onPressed: () => onButtonPressed(),
      child: Text(
        btnText,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
