import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color _lightPrimary = Colors.white;
const Color _darkPrimary = Color(0xff1f1f1f);
const Color _lightAccent = Color(0xff2ca8e2);
const Color _darkAccent = Color(0xff2ca8e2);

ThemeData lightTheme(context) => ThemeData(
    iconTheme: const IconThemeData(color: Colors.black87),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70),
    appBarTheme: const AppBarTheme(
      color: Colors.blueGrey,
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.grey[500],
    unselectedWidgetColor: Colors.black45,
    focusColor: Colors.black,
    textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: _darkPrimary, displayColor: _darkPrimary),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: _lightAccent));

ThemeData darkTheme(context) => ThemeData(
    primaryColor: Colors.black12,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.grey[10000],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70),
    appBarTheme: AppBarTheme(
      color: Colors.grey[10000],
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    focusColor: Colors.white,
    textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: _lightPrimary, displayColor: _lightPrimary),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: _darkAccent));
