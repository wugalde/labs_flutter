import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  int selectedColor = 0;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'El color seleccionado debe ser >= 0'),
        assert(selectedColor < colorList.length,
            'El color seleccionado debe ser < ${colorList.length}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}
