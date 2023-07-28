// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

const _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    required this.selectedColor,
  })  : assert(selectedColor >= 0, 'El valor debe ser mayor a cero'),
        assert(selectedColor < _colorThemes.length,
            'El valor debe ser menor a ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark,
    );
  }
}
