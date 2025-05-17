import 'package:blogify/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../shared/custom_color.dart';
import '../shared/custom_fontsize.dart';

class SignupTextWidget extends StatelessWidget {
  const SignupTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
              color: CustomColor.hintTextColor,
              fontSize: CustomFontsize.alternativeOptionFontSize),
        ),
        SizedBox(width: 8),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignupScreen()));
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
                color: CustomColor.themeColor,
                fontSize: CustomFontsize.alternativeOptionFontSize),
          ),
        )
      ],
    );
  }
}
