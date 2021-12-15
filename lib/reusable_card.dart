import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.containerColor, this.cardChild});

  final Color containerColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
      // child: TextButton.icon(
      //   onPressed: () {},
      //   icon: Text("Next"),
      //   label: CircleAvatar(child: Icon(Icons.chevron_right),),
      // ),
    );
  }
}