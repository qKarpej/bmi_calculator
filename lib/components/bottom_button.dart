import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton(this.onTap, this.buttonTitle);

  final GestureTapCallback? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          color: kSecondaryColour,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(bottom: 10),
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle)),
        ),
      );
  }
}