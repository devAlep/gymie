import 'package:flutter/material.dart';

class OnboardingForegroundWidget extends StatelessWidget {
  const OnboardingForegroundWidget({
    super.key,
    required this.title,
    this.titlePadding,
    required this.subTitle,
  });

  final String title;
  final String subTitle;
  final EdgeInsetsGeometry? titlePadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: titlePadding ?? EdgeInsets.zero,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        if (subTitle.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          )
      ],
    );
  }
}
