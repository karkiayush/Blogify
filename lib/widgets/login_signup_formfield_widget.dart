import 'package:blogify/providers/obsecure_text_provider.dart';
import 'package:flutter/material.dart';
import 'package:blogify/shared/custom_color.dart';
import 'package:provider/provider.dart';

class LoginSignupFormFieldWidget extends StatelessWidget {
  final String introText;
  final String hintText;
  final bool isPassword;

  const LoginSignupFormFieldWidget({
    super.key,
    required this.introText,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    final obsecureProvider = Provider.of<ObsecureTextProvider>(context);
    final bool isObsecure = isPassword ? obsecureProvider.isObsecure : false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          introText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Container(
          // Wrap with Container for curvy background
          decoration: BoxDecoration(
            color: CustomColor.formFieldBackgroundColor,
            borderRadius:
                BorderRadius.circular(12.0), // Curvy corners for the background
          ),
          child: TextFormField(
            obscureText: isObsecure,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 18,
                color: CustomColor.hintTextColor,
              ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              // It removes the default underline
              focusedBorder: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: () {
                        obsecureProvider.updateObsecureText(!isObsecure);
                      },
                      icon: Icon(
                          isObsecure ? Icons.visibility_off : Icons.visibility),
                    )
                  : null,
            ),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
