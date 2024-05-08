import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'screen/bottom_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isNormalTheme = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV',
      theme: isNormalTheme
          ? ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        canvasColor: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      )
          : ThemeData(
        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.black,
        canvasColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(switchTheme: switchTheme),
    );
  }

  void switchTheme() {
    setState(() {
      isNormalTheme = !isNormalTheme;
    });
  }
}

class SplashScreen extends StatelessWidget {
  final Function switchTheme;

  SplashScreen({required this.switchTheme});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Image.asset('images/cv.png'), // Use Image.asset for your image
      nextScreen: bottomNavbar(switchTheme),
      splashTransition: SplashTransition.fadeTransition, // Utiliser une transition de fondu
      pageTransitionType: PageTransitionType.leftToRight,
      backgroundColor: Colors.cyan,
    );
  }
}
