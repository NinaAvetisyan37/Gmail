import 'package:flutter/material.dart';
import 'package:gmail/pages/homePage.dart';

main(List<String> args) {
  runApp(GMailApp());
}

class GMailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff1573CB),
        disabledColor: Color(0xffB2B2B2)
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}