import 'package:blogify/widgets/button_widget.dart';
import 'package:blogify/widgets/custom_divider_widget.dart';
import 'package:blogify/widgets/forgot_password_widget.dart';
import 'package:blogify/widgets/onboarding_text_widget.dart';
import 'package:blogify/widgets/social_login_button_widget.dart';
import 'package:flutter/material.dart';

import '../shared/custom_color.dart';
import '../shared/custom_fontsize.dart';
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
          child: SingleChildScrollView(
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
                ),
                SizedBox(height: 18),
                // TODo: Implement the onPressed Functionality of button
                ButtonWidget(
                  buttonText: "Log In",
                  minWidth: width,
                  minHeight: height * 0.065,
                ),
                SizedBox(height: 18),
                ForgotPasswordWidget(),
                SizedBox(height: 18),

                // Divider containing OR
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomDividerWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: CustomColor.hintTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: CustomFontsize.alternativeOptionFontSize,
                        ),
                      ),
                    ),
                    CustomDividerWidget(),
                  ],
                ),
                SizedBox(height: 18),
                SocialLoginButtonWidget(
                  minWidth: width,
                  minHeight: height * 0.065,
                  icon: Icons.face,
                  buttonText: "Continue with Google",
                  iconImagePath: 'assets/images/google_icon.png',
                ),
                SizedBox(height: 18),
                SocialLoginButtonWidget(
                  minWidth: width,
                  minHeight: height * 0.065,
                  icon: Icons.face,
                  buttonText: "Continue with Facebook",
                  iconImagePath: 'assets/images/fb_icon.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
