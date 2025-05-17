import 'package:flutter/material.dart';

import '../screens/social_login_screen.dart';
import '../shared/custom_color.dart';

class SocialLoginButtonWidget extends StatelessWidget {
  final double minWidth;
  final double minHeight;
  final String buttonText;
  final IconData icon;
  final String iconImagePath;

  const SocialLoginButtonWidget({
    super.key,
    required this.minWidth,
    required this.minHeight,
    required this.icon,
    required this.buttonText,
    required this.iconImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 4.0,
        minimumSize: Size(minWidth, minHeight),
        backgroundColor: CustomColor.formFieldBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SocialLoginScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(iconImagePath),
              height: 30,
              width: 30,
            ),
            SizedBox(width: 15),
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
