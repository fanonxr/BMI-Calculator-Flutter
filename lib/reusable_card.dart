import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff2E749F);
const bottomContainerColor = Color(0xfffdba2c);

class ReusableCard extends StatelessWidget {
// constructor with a color property that is going to be passed
  ReusableCard({@required this.c, this.cardChild});

  final Color c;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}