import 'package:flutter/material.dart';

class Apptheme {
  Apptheme._();

static final ThemeData darkTheme = ThemeData(
    primaryColor: Color.fromARGB(255, 7, 197, 215),
    accentColor: Color.fromARGB(255, 188, 237, 239),
    secondaryHeaderColor: Color.fromARGB(255, 3, 109, 131),
    brightness: Brightness.dark,
    backgroundColor: Colors.black,
  );

static final ThemeData lightTheme = ThemeData(
    primaryColor: Color.fromARGB(255, 7, 197, 215),
    accentColor: Color.fromARGB(255, 188, 237, 239),
    secondaryHeaderColor: Color.fromARGB(255, 3, 109, 131),
    brightness: Brightness.light,
    backgroundColor: Colors.white,
  );
}
