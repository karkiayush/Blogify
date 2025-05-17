import 'package:flutter/material.dart';

import '../shared/custom_color.dart';

class ButtonWidget extends StatelessWidget {
  final double minWidth;
  final double minHeight;
  final String buttonText;

  const ButtonWidget({
    super.key,
    required this.buttonText,
    required this.minWidth,
    required this.minHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 4.0,
        backgroundColor: CustomColor.themeColor,
        minimumSize: Size(minWidth, minHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
