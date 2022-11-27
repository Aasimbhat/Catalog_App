import 'package:flutter/material.dart';
import 'package:flutter_30days/pages/home_page.dart';
import 'package:flutter_30days/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { //build is a imp method where all ui related work happens
    return MaterialApp(
      home:HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(
        brightness:Brightness.dark
      ),
      routes: {
        "/" :(context)=>HomePage(),
        "/login" :(context)=>LoginPage(),
      },
    );
  }
}
