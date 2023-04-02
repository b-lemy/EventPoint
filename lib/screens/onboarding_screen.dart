//import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:digital_invitation_card/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  Widget _buildImage(String assetName, [double width = 150]) {
    return Image.asset(
      'assets/$assetName',
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.only(left: 10, top: 50, right: 10, bottom: 10),
    );

    return Scaffold(
      body: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.teal,
        pages: [
          PageViewModel(
            title: 'one two',
            body: "udgnsbcsbchscjfhkfbhfdhhdkdfkdkghjdhfjsdgfdjfdk",
            image: _buildImage('Splash2.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'one two',
            body: "udgnsbcsbchscjfhkfbhfdhhdkdfkdkghjdhfjsdgfdjfdk",
            image: _buildImage('SplashScreen.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'one two',
            body: "udgnsbcsbchscjfhkfbhfdhhdkdfkdkghjdhfjsdgfdjfdk",
            image: _buildImage('Group 300.png'),
            decoration: pageDecoration,
          ),
        ],
        onDone: () => _onIntroEnd(context),
        onSkip: () => _onIntroEnd(context),
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        skip: const Text(
          "Skip",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        next: const Text("Next",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
        done: const Text("Done",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
            size: Size(7.0, 7.0),
            color: Colors.white,
            activeSize: Size(17.0, 8.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            )),
        dotsContainerDecorator: const ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)))),
      ),
    );
  }
}
