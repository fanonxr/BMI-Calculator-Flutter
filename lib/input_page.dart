import 'package:flutter/material.dart';

const bottomContainerheight = 80.0;
const activeCardColor = Color(0xff2E749F);
const bottomContainerColor = Color(0xfffdba2c);

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
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      c: activeCardColor,
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
              height: bottomContainerheight,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
// constructor with a color property thats going to be passed
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
