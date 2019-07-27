import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff215372),
        scaffoldBackgroundColor: Color(0xff215372),
        accentColor: Color(0xff20c0fc),
      ),
      home: InputPage(),
    );
  }
}

