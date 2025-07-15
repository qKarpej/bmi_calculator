import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconReusable extends StatelessWidget {
  IconReusable(this.text, this.icon);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80, color: Colors.white),
        SizedBox(height: 10),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}