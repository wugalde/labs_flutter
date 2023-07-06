import 'package:flutter/material.dart';
import 'package:labs_flutter/config/theme/app_theme.dart';
import 'package:labs_flutter/presentations/screen/buttons/buttons_screen.dart';
import 'package:labs_flutter/presentations/screen/cards/cards_screen.dart';
import 'package:labs_flutter/presentations/screen/counter/counter_screen.dart';
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
      theme: AppTheme(selectedColor: 0).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen(),
        '/counter': (context) => const CounterScreen()
      },
    );
  }
}
