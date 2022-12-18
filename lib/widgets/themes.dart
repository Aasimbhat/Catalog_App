import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData get ligthTheme  =>ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor:Colors.white ,
         canvasColor: Colors.blueGrey[100],
                  // ignore: deprecated_member_use
                  buttonColor: Colors.blueGrey[900],
                           // ignore: deprecated_member_use
                           accentColor: Colors.blueGrey[900],


        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24)
        )
     );

      static ThemeData get darkTheme  =>ThemeData(
         fontFamily: GoogleFonts.poppins().fontFamily,
         cardColor:Colors.black ,
         canvasColor: Colors.blueGrey[900],
         // ignore: deprecated_member_use
         buttonColor: Colors.indigo[500],
         // ignore: deprecated_member_use
         accentColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24)
        )
     );
}