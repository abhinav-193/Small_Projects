import 'package:black_hole_flutter/src/navigation.dart';
import 'package:dashed_container/dashed_container.dart';

import 'package:flutter/material.dart';
import 'package:project_open_jung/Screens/Welcome/second_page.dart';
import 'package:project_open_jung/components/text_widgets/color_text.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:tinder_swipecard/tinder_swipecard.dart';

class KnowYourself extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double WIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
              Color(0xffF6927C),
              Color(0xffFB8285),
              Color(0xffFC6EAA)
            ])),
        child: Stack(
          children: [
            Positioned(
              top: 200/ 782 * height,
              left: 100/ 392 * width,
              child: DashedContainer(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: Colors.transparent, shape: BoxShape.circle),
                ),
                dashColor: Colors.white,
                boxShape: BoxShape.circle,
                dashedLength: 30.0,
                blankLength: 6.0,
                strokeWidth: 1.0,
              ),
            ),
            Positioned(
              top: 150/ 782 * height,
              left: 50/ 392 * width,
              child: DashedContainer(
                child: Container(
                  height: 300.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.transparent, shape: BoxShape.circle),
                ),
                dashColor: Colors.white,
                boxShape: BoxShape.circle,
                dashedLength: 30.0,
                blankLength: 6.0,
                strokeWidth: 1.0,
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomPaint(
                  size: Size(
                      WIDTH,
                      (WIDTH * 1.2)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
              ),
            ),
            Positioned(
              top: 30/ 782 * height,
              left: -90/ 392 * width,
              child: DashedContainer(
                child: Container(
                  height: 600.0,
                  width: 600.0,
                  decoration: BoxDecoration(
                      color: Colors.transparent, shape: BoxShape.circle),
                ),
                dashColor: Colors.white,
                boxShape: BoxShape.circle,
                dashedLength: 30.0,
                blankLength: 12.0,
                strokeWidth: 1.0,
              ),
            ),
            Positioned(
              top: 120/ 782 * height,
              left: 50/ 392 * width,
              child: Image.asset('images/leftPhone.png',scale: 10,),
            ),
            Positioned(
              top: 280/ 782 * height,
              right: 50/ 392 * width,
              child: Image.asset('images/rightPhone.png',scale: 10,),
            ),
            Positioned(
              bottom: 0/ 782 * height,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ColoredText(
                      heading: 'Know about yourself\ntake our personality test',
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ColoredText(
                      heading: 'Find out which type of person you are\n'
                          'out of 16 personalities',
                      size: 16,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Hero(
                          tag: 'tog',
                          child: CustomPaint(
                            size: Size(
                                WIDTH * 0.04,
                                (WIDTH * 0.04)
                                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                            painter: smallCircles(),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomPaint(
                          size: Size(
                              WIDTH * 0.04,
                              (WIDTH * 0.04)
                                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: SmallCircleGrey(),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomPaint(
                          size: Size(
                              WIDTH * 0.04,
                              (WIDTH * 0.04)
                                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: SmallCircleGrey(),
                        ),
                        SizedBox(
                          width: 220 / 392 * width,
                        ),
                        TextButton(
                          onPressed: () {
                            context.navigator.push<void>(SwipeablePageRoute(
                                builder: (_) => ImproveYourself()));
                          },
                          child: Hero(
                              tag: 'next',
                              child: ColoredText(
                                heading: 'Next',
                                color: Colors.white,
                                size: 20,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color(0xffFB906C)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0005185, size.height * 0.4314514);
    path_0.cubicTo(
        size.width * 0.2598796,
        size.height * 0.7199573,
        size.width * 0.7931759,
        size.height * -0.0108324,
        size.width * 1.0006852,
        size.height * 0.4255923);
    path_0.quadraticBezierTo(size.width * 1.0013056, size.height * 0.5713554,
        size.width * 1.0032315, size.height * 1.0084205);
    path_0.lineTo(size.width * -0.0055370, size.height * 1.0113554);
    path_0.quadraticBezierTo(size.width * -0.0043519, size.height * 0.8663180,
        size.width * -0.0005185, size.height * 0.4314514);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class smallCircles extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5000000, size.height * 0.5000000),
            width: size.width,
            height: size.height),
        paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SmallCircleGrey extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFDC8B6).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5000000, size.height * 0.5000000),
            width: size.width,
            height: size.height),
        paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
