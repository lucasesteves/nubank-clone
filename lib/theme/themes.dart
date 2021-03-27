import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  final backgroundColor = Color.fromRGBO(134, 72, 159, 1);
  final primaryColor = Colors.purple;
  final primaryColorDark = Colors.black38;
  final secondaryColor = Colors.blueAccent;
  final hintColor = Colors.green;
  final primaryColorLight = Colors.white;
  final accentColor = Color.fromRGBO(150, 80, 174, 1);
  final textTheme = TextTheme(
    headline1: TextStyle(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    headline2: TextStyle(
        fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black38),
    headline3: TextStyle(
        fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
    bodyText1: TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black38),
    bodyText2: TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey),
  );

  return ThemeData(
    primarySwatch: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColor: primaryColor,
    primaryColorLight: primaryColorLight,
    accentColor: accentColor,
    hintColor: hintColor,
    highlightColor: secondaryColor,
    backgroundColor: backgroundColor,
    textTheme: textTheme,
  );
}
