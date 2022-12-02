import 'package:flutter/material.dart';
import 'package:flutter_30days/pages/cart_page.dart';
import 'package:flutter_30days/pages/home_page.dart';
import 'package:flutter_30days/pages/login.dart';
import 'package:flutter_30days/utils/routes.dart';
import 'package:flutter_30days/widgets/themes.dart';

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
      
      theme:MyTheme.ligthTheme,
      darkTheme: MyTheme.darkThemeTheme,
      initialRoute:MyRoutes.homeRoute ,
      routes: {
        MyRoutes.loginRoute :(context)=>LoginPage(),
        MyRoutes.homeRoute :(context)=>HomePage(),
                MyRoutes.cardRoute :(context)=>CartPage(),

      },
    );
  }
}
