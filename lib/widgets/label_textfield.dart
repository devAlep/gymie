import 'package:flutter/material.dart';

class LabeledTextField extends StatefulWidget {
  const LabeledTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.keyboardType,
    required this.controller,
  });

  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  State<LabeledTextField> createState() => _LabeledTextFieldState();
}

class _LabeledTextFieldState extends State<LabeledTextField> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextFormField(
          keyboardType: widget.keyboardType,
          obscureText: widget.keyboardType == TextInputType.visiblePassword &&
              !_isPasswordVisible,
          cursorColor: Colors.grey.shade500,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: widget.keyboardType == TextInputType.visiblePassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.password
                          : Icons.remove_red_eye_sharp,
                      color: Colors.white,
                    ),
                  )
                : null,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade500,
              ),
            ),
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
