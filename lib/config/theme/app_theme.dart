import 'package:flutter/material.dart';

const colorsList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be grather then 0'),
        assert(selectedColor < colorsList.length,
            'Selected color must be less or equal than ${colorsList.length}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorsList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}
