import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/SplashScreen (2).png'),
                 fit: BoxFit.cover),
             ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
    body: Center(
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Image.asset('assets/Group 300.png'),
            const Text("event point", style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white ),)
                  ],
            ),
          ),
        ),
    );
  }
}