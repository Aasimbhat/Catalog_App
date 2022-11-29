import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData get ligthTheme  =>ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24)
        )
     );

      static ThemeData get darkThemeTheme  =>ThemeData(
       brightness:Brightness.dark,
     );
}