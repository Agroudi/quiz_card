import 'package:flutter/material.dart';
import 'package:quiz_card/screens/home_screen.dart';
import 'package:quiz_card/screens/login_screen.dart';
import 'package:quiz_card/screens/signup_screen.dart';
import 'package:quiz_card/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}