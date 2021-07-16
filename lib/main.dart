import 'package:flutter/material.dart';
import 'package:flutter_application_2/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Book App',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
