import 'package:blogify/widgets/onboarding_text_widget.dart';
import 'package:flutter/material.dart';

import '../shared/custom_color.dart';
import '../widgets/login_signup_formfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.darkThemeColor,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 12),
          child: Container(
            height: height,
            width: width,
            child: Column(
              /*  mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: ,*/
              children: <Widget>[
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.grey,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/blogify_logo.png',
                      width: 70,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                OnboardingTextWidget(
                  onBoardingText: "Welcome Back !",
                  supportingText: "Log In to Continue",
                ),
                SizedBox(height: 15),
                LoginSignupFormFieldWidget(
                  introText: "Email or Username",
                  hintText: "Enter your email or username",
                ),
                SizedBox(height: 15),
                LoginSignupFormFieldWidget(
                  introText: "Password",
                  hintText: "Enter your password",
                  isPassword: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
