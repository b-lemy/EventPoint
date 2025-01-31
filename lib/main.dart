//import 'package:digital_invitation_card/screens/imageslider.dart';
import 'package:digital_invitation_card/config/themes/light_theme.dart';
//import 'package:digital_invitation_card/screens/carousels.dart';
import 'package:digital_invitation_card/screens/splash_screen.dart';
//import 'package:digital_invitation_card/screens/splash_screen.dart';
//import 'package:digital_invitation_card/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: EventAppLightTheme.buildTheme(),
      home: const SplashScreen(),
    );
  }
}
