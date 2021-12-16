import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.containerColor, this.cardChild, this.gestureOnTap});

  final Color containerColor;
  final Widget? cardChild;
  final Function()? gestureOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureOnTap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
