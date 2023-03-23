
//import 'package:digital_invitation_card/screens/login_screen.dart';
import 'package:digital_invitation_card/screens/verification.dart';
//import 'package:digital_invitation_card/screens/signup_screen.dart';
//import 'package:digital_invitation_card/screens/onboarding_screen.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
   
      home: OtpScreen(),
    );
  }
}

