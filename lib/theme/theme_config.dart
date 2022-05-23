import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color _lightPrimary = Colors.white;
const Color _darkPrimary = Color(0xff1f1f1f);
const Color _lightAccent = Color(0xff2ca8e2);
const Color _darkAccent = Color(0xff2ca8e2);

ThemeData lightTheme(context) => ThemeData(
    iconTheme: const IconThemeData(color: Colors.black87),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70),
    appBarTheme: const AppBarTheme(
        //  color: Colors.transparent,
        ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    cardColor: CupertinoColors.inactiveGray.withOpacity(0.1),
    unselectedWidgetColor: Colors.black,
    focusColor: Colors.black,
    secondaryHeaderColor: CupertinoColors.lightBackgroundGray,
    textTheme: GoogleFonts.openSansTextTheme(const TextTheme(
      headline1: TextStyle(
          color: Colors.black, fontSize: 40, fontWeight: FontWeight.w500),
      headline2: TextStyle(
          color: Colors.black, fontSize: 34, fontWeight: FontWeight.w400),
      headline3: TextStyle(
          color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
      headline4: TextStyle(
          color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
      headline5: TextStyle(
          color: Colors.black, fontSize: 19, fontWeight: FontWeight.w700),
      headline6: TextStyle(
          color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
      subtitle1: TextStyle(
          color: Colors.black87, fontSize: 14, fontWeight: FontWeight.normal),
      subtitle2: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
    )).apply(bodyColor: _darkPrimary, displayColor: _darkPrimary),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: _lightAccent));

ThemeData darkTheme(context) => ThemeData(
    primaryColor: Colors.black12,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: CupertinoColors.darkBackgroundGray,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70),
    appBarTheme: const AppBarTheme(color: Colors.transparent),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    unselectedWidgetColor: Colors.white,
    cardColor: CupertinoColors.inactiveGray.withOpacity(0.08),
    focusColor: Colors.white,
    secondaryHeaderColor: CupertinoColors.darkBackgroundGray,
    textTheme: GoogleFonts.openSansTextTheme(const TextTheme(
            headline1: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
            headline2: TextStyle(
                color: Colors.white, fontSize: 34, fontWeight: FontWeight.w400),
            headline3: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
            headline4: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold),
            headline5: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.w700),
            headline6: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
            subtitle1: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.normal),
            subtitle2: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)))
        .apply(bodyColor: _lightPrimary, displayColor: _lightPrimary),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: _darkAccent));
