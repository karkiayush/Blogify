import 'package:flutter/material.dart';

import '../shared/custom_color.dart';
import '../shared/custom_fontsize.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: TextStyle(
              color: CustomColor.hintTextColor,
              fontSize: CustomFontsize.alternativeOptionFontSize),
        ),
        SizedBox(width: 8),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            "Log in",
            style: TextStyle(
                color: CustomColor.themeColor,
                fontSize: CustomFontsize.alternativeOptionFontSize),
          ),
        )
      ],
    );
  }
}
