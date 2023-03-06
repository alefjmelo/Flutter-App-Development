import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/welcome/welcome_screen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: grey1,
        backgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
