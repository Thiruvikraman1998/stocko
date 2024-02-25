import 'package:flutter/material.dart';
import 'package:stocko/authentication/landing.dart';
import 'package:stocko/utils/theme_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stocko',
      theme: ThemeData(
        scaffoldBackgroundColor: ThemeConstants.scaffoldBgColor,
        appBarTheme:
            const AppBarTheme(backgroundColor: ThemeConstants.primaryColor),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(ThemeConstants.primaryColor),
            shape: MaterialStatePropertyAll(
              StadiumBorder(),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
