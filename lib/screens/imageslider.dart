import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _SliderState();
}

class _SliderState extends State<ImageSlider> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        width: double.maxFinite,
        child: CarouselSlider(
          disableGesture: false,
          items: [
            Image.asset(
              'assets/home3.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/home1.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/home2.jpg',
              fit: BoxFit.cover,
            )
          ],
          options: CarouselOptions(
            autoPlay: true,
            padEnds: false,
            enlargeFactor: 5.0,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            enlargeCenterPage: true,
            //aspectRatio: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
