import 'package:flutter/material.dart';
import 'package:flutter_30days/pages/home_page.dart';
import 'package:flutter_30days/pages/login.dart';
import 'package:flutter_30days/utils/routes.dart';

void main() {
  runApp(const MyApp());
}
//git push --set-upstream origin day-4
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { //build is a imp method where all ui related work happens
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
     ),
      darkTheme: ThemeData(
        brightness:Brightness.dark
      ),
      initialRoute:MyRoutes.homeRoute ,
      routes: {
        MyRoutes.loginRoute :(context)=>LoginPage(),
        MyRoutes.homeRoute :(context)=>HomePage(),
      },
    );
  }
}
