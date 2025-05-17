import 'package:flutter/material.dart';
import '../shared/custom_color.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        height: 0,
        color: CustomColor.hintTextColor,
        thickness: 1,
      ),
    );
  }
}
