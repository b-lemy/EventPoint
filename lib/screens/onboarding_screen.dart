import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pageIndex = 0;
   final List<Widget> _demo=[
    Container(height: 300,decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/SplashScreen.png'),
                 fit: BoxFit.cover)) ),
              Container(height: 300, decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/SplashScreen (2).png'),
                 fit: BoxFit.cover))),
                  Container(height: 300, decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/SplashScreen (2).png'),
                 fit: BoxFit.cover))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
        child: Column(
            children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: PageView(
                children: _demo,
                
                onPageChanged: (index){
                    setState(() {
                      pageIndex=index;
                    });
                },
              ),
            ),
            const SizedBox(height: 40),
            CarouselIndicator(
              count: _demo.length,
              index: pageIndex,
              color: Colors.black,
            ),
            const SizedBox(height: 20,),
           const Text("Quickly Transfer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
           const Text("Be able to quickly transfer the information about your events, so as friends, family and relatives can come and celebrate with you", style: TextStyle(fontSize: 12),)
         ,
         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             TextButton(
                              onPressed: () => {
        
              },
                               child:const Text("Skip",
                                 style: TextStyle(
                                     color: Colors.teal
                                 ),
                               ),
                             )
                           ],
                         ), ],
          
        ),
          ),
      ));
  }
}