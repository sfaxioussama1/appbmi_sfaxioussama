import 'package:appbmisfaxioussama/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: ThemeData.dark().copyWith(
//        primaryColor: Color(0xFF0A0D22),
//        scaffoldBackgroundColor: Color(0xFF0A0D22),
//        textTheme: TextTheme(
//          bodyText2: TextStyle(color: Colors.white),
//        ),
//      ),
      home: MyHomePage(),
    );
  }
}

