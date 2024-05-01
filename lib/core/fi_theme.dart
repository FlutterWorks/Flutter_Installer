import 'package:flutter/material.dart';

class FiTheme {
  static const TextTheme _textTheme = TextTheme(
    titleMedium: TextStyle(
      fontFamily: "RobotoMono",
    ),
    titleSmall: TextStyle(
      fontFamily: "RobotoMono",
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    textTheme: _textTheme,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme.light(),
  );

  static final ThemeData darkTheme = ThemeData(
    textTheme: _textTheme,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme.dark(),
  );
}
