import 'package:flutter/material.dart';
import 'package:flutter_30days/pages/home_page.dart';
import 'package:flutter_30days/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { //build is a imp method where all ui related work happens
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily
     ),
      darkTheme: ThemeData(
        brightness:Brightness.dark
      ),
      initialRoute: "/login",
      routes: {
        "/" :(context)=>HomePage(),
        "/login" :(context)=>LoginPage(),
      },
    );
  }
}
