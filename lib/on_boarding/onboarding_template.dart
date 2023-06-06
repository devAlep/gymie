import 'package:flutter/material.dart';
import 'package:gymie/on_boarding/onboarding_background_widget.dart';
import 'package:gymie/on_boarding/onboarding_foreground_widget.dart';

class OnboardingTemplate extends StatelessWidget {
  const OnboardingTemplate({
    super.key,
    required this.imagePath,
    required this.subTitle,
    required this.title,
    this.imageHeight,
    this.titlePadding,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });
  final String imagePath;
  final String title;
  final String subTitle;
  final double? imageHeight;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsetsGeometry? titlePadding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingBackgroundWidget(
          imagePath: imagePath,
          imageHeight: imageHeight,
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: crossAxisAlignment,
            children: [
              OnboardingForegroundWidget(
                title: title,
                subTitle: subTitle,
                titlePadding: titlePadding,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
