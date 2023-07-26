import 'package:flutter/material.dart';

import 'package:spade/screen/onboarding%20screen/Login_or_signup_screen.dart';



void main() {
  runApp(const MyApp());
}
///check
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spade',
      theme: ThemeData(
      ),
      home: const LoginOrSignupScreen()
    );
  }
}

