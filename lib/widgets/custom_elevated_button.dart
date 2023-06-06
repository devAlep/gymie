import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.btnText,
    required this.onButtonPressed,
  });

  final VoidCallback onButtonPressed;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow,
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
          color: Colors.black,
        ),
      ),
    );
  }
}
