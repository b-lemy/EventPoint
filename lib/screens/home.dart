import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
           height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

      
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/assets/alucard.jpg'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
    
        ),
      ),
    );
  }
}