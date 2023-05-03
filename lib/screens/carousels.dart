import 'package:flutter/material.dart';
//import 'package:flutter_feather_icons/flutter_feather_icons.dart';
//import 'package:flutx/flutx.dart';

class SimpleCarouselWidget extends StatefulWidget {
  const SimpleCarouselWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SimpleCarouselWidgetState createState() => _SimpleCarouselWidgetState();
}

class _SimpleCarouselWidgetState extends State<SimpleCarouselWidget> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicatorStatic() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  @override
  void initState() {
    super.initState();
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInToLinear,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white.withAlpha(140),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.2,
              child: PageView(
                pageSnapping: true,
                physics: const ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Image.asset(
                      'assets/home1.jpg',
                      height: 200.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset(
                      'assets/home2.jpg',
                      height: 200.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset(
                      'assets/home3.jpg',
                      height: 200.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicatorStatic(),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
