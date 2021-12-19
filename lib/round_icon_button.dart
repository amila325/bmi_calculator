import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.onPressedAction, this.icon});

  final Function()? onPressedAction;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressedAction,
      shape: CircleBorder(),
      fillColor: kRoundIconBackgroundColour,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 10.0,
    );
  }
}