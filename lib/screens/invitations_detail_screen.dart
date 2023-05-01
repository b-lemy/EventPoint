import 'package:flutter/material.dart';

class InvitationsDetailScreen extends StatelessWidget {
  const InvitationsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 100,
          horizontal: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              const InvitationsDetailScreen())));
                },
                alignment: Alignment.center,
                icon: const Icon(Icons.chevron_left_outlined),
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: ShapeDecoration(
                  shape: WeirdBorder(radius: 20), color: Colors.white),
              height: size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/home3.jpg'),
                  const SizedBox(
                    height: 80,
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      heightFactor: 5,
                      child: GridView(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        children: [
                          Container(
                            child: Column(children: const [
                              Text('Some little heading'),
                              SizedBox(
                                height: 15,
                              ),
                              Text('The Detail',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ]),
                          ),
                          Container(
                            child: Column(children: const [
                              Text('Some little heading'),
                              SizedBox(
                                height: 15,
                              ),
                              Text('The Detail',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ]),
                          ),
                          Container(
                            child: Column(children: const [
                              Text('Some little heading'),
                              SizedBox(
                                height: 15,
                              ),
                              Text('The Detail',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ]),
                          ),
                          Container(
                            child: Column(children: const [
                              Text('Some little heading'),
                              SizedBox(
                                height: 15,
                              ),
                              Text('The Detail',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ]),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// This is the code for the card with corners inverted. For now it does both on top and bottom

class WeirdBorder extends ShapeBorder {
  final double radius;
  final double pathWidth;

  WeirdBorder({required this.radius, this.pathWidth = 1});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..fillType = PathFillType.nonZero
      ..addPath(getOuterPath(rect, textDirection: textDirection), Offset.zero);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) =>
      _createPath(rect);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => WeirdBorder(radius: radius);

  Path _createPath(Rect rect) {
    final innerRadius = radius + pathWidth;
    final innerRect = Rect.fromLTRB(rect.left + pathWidth, rect.top + pathWidth,
        rect.right - pathWidth, rect.bottom - pathWidth);

    final outer = Path.combine(PathOperation.difference, Path()..addRect(rect),
        _createBevels(rect, radius));
    final inner = Path.combine(PathOperation.difference,
        Path()..addRect(innerRect), _createBevels(rect, innerRadius));
    return Path.combine(PathOperation.union, outer, inner);
  }

  Path _createBevels(Rect rect, double radius) {
    return Path()
      ..addOval(
          Rect.fromCircle(center: Offset(rect.left, rect.top), radius: radius))
      ..addOval(Rect.fromCircle(
          center: Offset(rect.left + rect.width, rect.top), radius: radius))
      ..addOval(Rect.fromCircle(
          center: Offset(rect.left, rect.top + rect.height), radius: radius))
      ..addOval(Rect.fromCircle(
          center: Offset(rect.left + rect.width, rect.top + rect.height),
          radius: radius));
  }
}
