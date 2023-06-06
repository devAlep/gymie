import 'package:flutter/material.dart';

class OnboardingBackgroundWidget extends StatelessWidget {
  const OnboardingBackgroundWidget({
    super.key,
    required this.imagePath,
    this.imageHeight,
  });

  final String imagePath;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: imageHeight ?? MediaQuery.of(context).size.height * 0.7,
          width: double.infinity,
          child: imagePath.contains('http')
              ? Image.network(
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
        ),
      ],
    );
  }
}
