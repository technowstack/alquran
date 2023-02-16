// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Color appPurple = Color(0xff431AA1);
Color appPurpleDark = Color(0xff1E0771);
Color appPurpleLight1 = Color(0xff9345F2);
Color appPurpleLight2 = Color(0xffB9A2D8);
Color appWhite = Color(0xffFAF8FC);
Color appOrange = Color(0xffE6704A);

ThemeData appLight = ThemeData(
    primaryColor: appPurple,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(backgroundColor: appPurple));

ThemeData appDark = ThemeData(
    primaryColor: appPurple,
    scaffoldBackgroundColor: appPurpleDark,
    appBarTheme: AppBarTheme(backgroundColor: appPurpleDark),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: appWhite),
      bodyText2: TextStyle(color: appWhite),
    ));
