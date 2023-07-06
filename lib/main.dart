import 'package:flutter/material.dart';
import 'package:labs_flutter/config/theme/app_theme.dart';
import 'package:labs_flutter/presentations/screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 7).getTheme(),
      home: const HomeScreen(),
    );
  }
}
