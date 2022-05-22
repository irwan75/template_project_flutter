import 'package:flutter/material.dart';

import 'colors_custom.dart';

class ThemaCustom {
  static final darkTheme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],

    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(primary: ColorsCustom.primaryColor.orange),
    // Define the default brightness and colors.
    scaffoldBackgroundColor: ColorsCustom.colorBackground,

    // Define the default font family.
    // fontFamily: 'Georgia',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    // textTheme: const TextTheme(
    //   headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    // ),
  );
}
