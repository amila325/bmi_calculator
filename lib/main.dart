import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kAppPrimaryColor,
        appBarTheme: const AppBarTheme(backgroundColor: kAppPrimaryColor),
        scaffoldBackgroundColor: kAppPrimaryColor,
      ),
      home: const InputPage(),
    );
  }
}
