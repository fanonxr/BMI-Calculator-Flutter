import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      c: activeCardColor,
                      cardChild: IconContent(label: "MALE", icon: FontAwesomeIcons.mars,),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      c: activeCardColor,
                      cardChild: IconContent(label: "FEMALE", icon: FontAwesomeIcons.venus,),
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                c: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      c: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      c: activeCardColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

