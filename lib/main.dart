import'package:flutter/material.dart';
import 'screens/HomePage.dart';
import 'screens/Home.dart';
main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      backgroundColor: Colors.white70,
      fontFamily: 'cream',
      focusColor: Colors.purple, 
    ),
  ));
}