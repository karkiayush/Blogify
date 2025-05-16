import 'package:flutter/material.dart';

import '../shared/custom_color.dart';

class OnboardingTextWidget extends StatelessWidget {
  final String onBoardingText;
  final String supportingText;

  const OnboardingTextWidget(
      {super.key, required this.onBoardingText, required this.supportingText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          onBoardingText,
          style: TextStyle(
            color: CustomColor.onBoardingTextColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 3),
        Text(
          supportingText,
          style: TextStyle(
            color: CustomColor.supportingTextColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
