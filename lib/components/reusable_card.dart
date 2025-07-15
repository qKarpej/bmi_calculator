import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.cardChild, this.onPress});

  final Color? colour;
  final Widget? cardChild;
  final GestureTapCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {

  RoundIconButton({this.icon, this.onPressed});
  final IconData? icon;
  final GestureTapCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 6,
      onPressed: onPressed,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      child: Icon(icon, color: Colors.white),
    );
  }
}


