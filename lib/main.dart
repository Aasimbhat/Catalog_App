import 'package:flutter/material.dart';
import 'package:flutter_30days/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { //build is a imp method where all ui related work happens
    return MaterialApp(
      home:HomePage()
    );
  }
}
