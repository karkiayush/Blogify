import 'package:flutter/material.dart';

import '../screens/forget_password_screen.dart';
import '../shared/custom_color.dart';
import '../shared/custom_fontsize.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ForgetPasswordScreen()));
        },
        child: Text(
          "Forgot Password?",
          style: TextStyle(
            color: CustomColor.themeColor,
            fontSize: CustomFontsize.alternativeOptionFontSize,
          ),
        ),
      ),
    );
  }
}
