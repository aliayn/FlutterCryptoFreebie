import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color _lightPrimary = Colors.white;
const Color _darkPrimary = Color(0xff1f1f1f);
const Color _lightAccent = Color(0xff2ca8e2);
const Color _darkAccent = Color(0xff2ca8e2);
const Color _lightBG = Colors.white;
const Color _darkBG = Color(0xff121212);
const Color _widgetLightBackgroundColor = Colors.blueGrey;

ThemeData lightTheme(context) => ThemeData(
    backgroundColor: _lightBG,
    iconTheme: const IconThemeData(color: _darkPrimary),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: _widgetLightBackgroundColor,
        selectedItemColor: _lightPrimary,
        unselectedItemColor: Colors.white70),
    canvasColor: Colors.transparent,
    primaryColor: _lightPrimary,
    scaffoldBackgroundColor: _lightBG,
    focusColor: _darkPrimary,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
        elevation: 0.0, backgroundColor: _widgetLightBackgroundColor),
    textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: _darkPrimary, displayColor: _darkPrimary),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(brightness: Brightness.light, secondary: _lightAccent),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: _lightAccent));

ThemeData darkTheme(context) => ThemeData(
    brightness: Brightness.dark,
    backgroundColor: _darkBG,
    canvasColor: Colors.transparent,
    primaryColor: _darkPrimary,
    scaffoldBackgroundColor: _darkBG,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: _darkPrimary,
        selectedItemColor: _lightPrimary,
        unselectedItemColor: Colors.white70),
    appBarTheme:
        const AppBarTheme(elevation: 0.0, backgroundColor: _darkPrimary),
    textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: _lightPrimary, displayColor: _lightPrimary),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(brightness: Brightness.dark, secondary: _darkAccent),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: _darkAccent));
