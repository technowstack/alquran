// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Color appPurple = Color(0xff431AA1);
Color appPurpleDark = Color(0xff1E0771);
Color appPurpleLight1 = Color(0xff9345F2);
Color appPurpleLight2 = Color(0xffB9A2D8);
Color appWhite = Color(0xffFAF8FC);
Color appOrange = Color(0xffE6704A);

ThemeData themeLight = ThemeData(
    brightness: Brightness.light,
    primaryColor: appPurple,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(backgroundColor: appPurple, elevation: 0),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: appPurpleDark),
      bodyText2: TextStyle(color: appPurpleDark),
    ));

ThemeData themeDark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: appPurple,
    scaffoldBackgroundColor: appPurpleDark,
    appBarTheme: AppBarTheme(backgroundColor: appPurpleDark, elevation: 4),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: appWhite),
      bodyText2: TextStyle(color: appWhite),
    ));
