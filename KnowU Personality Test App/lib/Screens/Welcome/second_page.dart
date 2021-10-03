import 'dart:ui' as ui;
// ignore: implementation_imports
import 'package:black_hole_flutter/src/navigation.dart';
import 'package:flutter/material.dart';
import 'package:project_open_jung/Screens/Welcome/page_three.dart';
import 'package:project_open_jung/components/text_widgets/color_text.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';


class ImproveYourself extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    double WIDTH = MediaQuery.of(context).size.width;
    print(WIDTH);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
              Color(0xff735DF0),
              Color(0xffBD61D1),
              Color(0xffD363C7),
            ])),
        child: Stack(
          children: [
            Positioned(
              top: 70 / 782 * height,
              left: -50 / 392 * width,
              child: CustomPaint(
                size: Size(500, 500),
                painter: RPSCustomPainter(),
              ),
            ),

            //Add this CustomPaint widget to the Widget Tree
            Positioned(
              top: 300 / 782 * height,
              left: 50 / 392 * width,
              child: Transform.rotate(
                angle: 0.75,
                child: CustomPaint(
                  size: Size(
                      WIDTH,
                      (WIDTH * 0.9941439272338148)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: BottomArc(),
                ),
              ),
            ),
            //Add this CustomPaint widget to the Widget Tree
            Positioned(
              top: 50 / 782 * height,
              child: Transform.rotate(
                angle: 0.1,
                child: CustomPaint(
                  size: Size(
                      WIDTH,
                      (WIDTH * 1.0042091574840872)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: LeftToRight(),
                ),
              ),
            ),
            //Add this CustomPaint widget to the Widget Tree
            Positioned(
              top: 120 / 782 * height,
              left: 40 / 392 * width,
              child: Transform.rotate(
                angle: 1.2,
                child: CustomPaint(
                  size: Size(
                      WIDTH,
                      (WIDTH * 0.9971903503691907)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RightToLeft(),
                ),
              ),
            ),

            Positioned(
              top: -25 / 782 * height,
              left: 170 / 392 * width,
              child: Transform.rotate(
                angle: -0.2,
                child: CustomPaint(
                  size: Size(
                      WIDTH,
                      (WIDTH * 1.0042091574840872)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: LeftToRight(),
                ), //rectangle one
              ),
            ),
            Positioned(
              top: 160 / 782 * height,
              right: 120 / 392 * width,
              child: Transform.rotate(
                angle: 1.3,
                child: CustomPaint(
                  size: Size(
                      WIDTH,
                      (WIDTH * 0.9971903503691907)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RightToLeft(),
                ), // rectangle one
              ),
            ),
            //Add this CustomPaint widget to the Widget Tree

            Positioned(
              bottom: 315/ 782 * height,
              left: 80/ 392 * width,
              child: Image.asset(
                'images/1.png',
                scale: 12,
              ),
            ),//brain
            Positioned(
              bottom: 465/ 782 * height,
              right: 225/ 392 * width,
              child: Image.asset(
                'images/2.png',
                scale: 8,
              ),
            ),//whiteLeft


            Positioned(
              bottom: 580/ 782 * height,
              right: 50/ 392 * width,
              child: Image.asset(
                'images/3.png',
                scale: 7.5,
              ),
            ),//rightGirl


            Positioned(
              bottom: 380/ 782 * height,
              left: 27/ 392 * width,
              child: Image.asset(
                'images/4.png',
                scale: 22,
              ),
            ),
            Positioned(
              bottom: 540/ 782 * height,
              left: 60/ 392 * width,
              child: Image.asset(
                'images/5.png',
                scale: 7,
              ),
            ),
            Positioned(
              bottom: 450/ 782 * height,
              right: 80/ 392 * width,
              child: Image.asset(
                'images/6.png',
                scale: 9,
              ),
            ),
            Positioned(
              bottom: 300/ 782 * height,
              right: 100/ 392 * width,
              child: Image.asset(
                'images/7.png',
                scale: 4,
              ),
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
                      heading: 'Know your weakness\nand improve yourself',
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ColoredText(
                      heading: 'Find out about your best suited careers and\n'
                          'much more',
                      size: 16,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                          width: 220 / 392 * width,
                        ),
                        TextButton(
                          onPressed: () {
                            context.navigator.push<void>(SwipeablePageRoute(
                                builder: (_) => ChatPeople()));
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

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    paint_0.shader = ui.Gradient.linear(
        Offset(size.width * 0.53, size.height * 0.70),
        Offset(size.width * 0.53, size.height * 0.14),
        [Color(0xff9D69F2), Color(0xffD271D2)],
        [0.00, 1.00]);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, 0),
        Offset(size.width * 0.5000000, size.height * 0.01000000),
        [Color(0xffd271d2).withOpacity(1), Color(0xff9d69f2).withOpacity(1)],
        [0, 1]);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5000000, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class BottomArc extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7346602, size.height * 0.1930756);
    path_0.lineTo(size.width * 0.7097245, size.height * 0.2049670);
    path_0.cubicTo(
        size.width * 0.7097245,
        size.height * 0.2049670,
        size.width * 0.6580417,
        size.height * 0.2295815,
        size.width * 0.6606260,
        size.height * 0.2304130);
    path_0.cubicTo(
        size.width * 0.6632103,
        size.height * 0.2312445,
        size.width * 0.6011905,
        size.height * 0.2613297,
        size.width * 0.6046790,
        size.height * 0.2620428);
    path_0.cubicTo(
        size.width * 0.6081675,
        size.height * 0.2627559,
        size.width * 0.5443392,
        size.height * 0.2992619,
        size.width * 0.5443392,
        size.height * 0.2992619);
    path_0.lineTo(size.width * 0.4806421, size.height * 0.3421885);
    path_0.lineTo(size.width * 0.4323167, size.height * 0.3761998);
    path_0.lineTo(size.width * 0.3754655, size.height * 0.4205527);
    path_0.lineTo(size.width * 0.2998662, size.height * 0.4810380);
    path_0.lineTo(size.width * 0.2462654, size.height * 0.5363727);
    path_0.lineTo(size.width * 0.1938068, size.height * 0.5902382);
    path_0.lineTo(size.width * 0.1472927, size.height * 0.6449379);
    path_0.lineTo(size.width * 0.09638577, size.height * 0.7099817);
    path_0.lineTo(size.width * 0.05775281, size.height * 0.7670575);
    path_0.lineTo(size.width * 0.02416265, size.height * 0.8209256);
    path_0.lineTo(0, size.height * 0.8723477);

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002675227;
    paint0Stroke.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class LeftToRight extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 1.153387);
    path_0.lineTo(size.width * 0.03173320, size.height * 1.080312);
    path_0.lineTo(size.width * 0.07585434, size.height * 1.003769);
    path_0.lineTo(size.width * 0.1265932, size.height * 0.9226575);
    path_0.lineTo(size.width * 0.1934554, size.height * 0.8302240);
    path_0.lineTo(size.width * 0.2545500, size.height * 0.7524831);
    path_0.lineTo(size.width * 0.3234470, size.height * 0.6759401);
    path_0.lineTo(size.width * 0.4004807, size.height * 0.5958295);
    path_0.lineTo(size.width * 0.4931400, size.height * 0.5113386);
    path_0.lineTo(size.width * 0.5678019, size.height * 0.4483138);
    path_0.lineTo(size.width * 0.6312683, size.height * 0.3999843);
    path_0.lineTo(size.width * 0.7149276, size.height * 0.3389806);
    path_0.cubicTo(
        size.width * 0.7149276,
        size.height * 0.3389806,
        size.width * 0.7987580,
        size.height * 0.2871017,
        size.width * 0.7941751,
        size.height * 0.2860899);
    path_0.cubicTo(
        size.width * 0.7895921,
        size.height * 0.2850781,
        size.width * 0.8710403,
        size.height * 0.2423136,
        size.width * 0.8676524,
        size.height * 0.2411392);
    path_0.cubicTo(
        size.width * 0.8642645,
        size.height * 0.2399649,
        size.width * 0.9321454,
        size.height * 0.2049648,
        size.width * 0.9321454,
        size.height * 0.2049648);
    path_0.lineTo(size.width * 0.9648974, size.height * 0.1880677);

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002632369;
    paint0Stroke.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RightToLeft extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.9981715);
    path_0.lineTo(size.width * 0.02727079, size.height * 0.9349306);
    path_0.lineTo(size.width * 0.06518749, size.height * 0.8686883);
    path_0.lineTo(size.width * 0.1087914, size.height * 0.7984919);
    path_0.lineTo(size.width * 0.1662512, size.height * 0.7184975);
    path_0.lineTo(size.width * 0.2187545, size.height * 0.6512184);
    path_0.lineTo(size.width * 0.2779630, size.height * 0.5849762);
    path_0.lineTo(size.width * 0.3441640, size.height * 0.5156463);
    path_0.lineTo(size.width * 0.4237933, size.height * 0.4425257);
    path_0.lineTo(size.width * 0.4879561, size.height * 0.3879825);
    path_0.lineTo(size.width * 0.5424976, size.height * 0.3461568);
    path_0.lineTo(size.width * 0.6143926, size.height * 0.2933626);
    path_0.cubicTo(
        size.width * 0.6143926,
        size.height * 0.2933626,
        size.width * 0.6864345,
        size.height * 0.2484653,
        size.width * 0.6824960,
        size.height * 0.2475896);
    path_0.cubicTo(
        size.width * 0.6785575,
        size.height * 0.2467140,
        size.width * 0.7485522,
        size.height * 0.2097045,
        size.width * 0.7456407,
        size.height * 0.2086882);
    path_0.cubicTo(
        size.width * 0.7427293,
        size.height * 0.2076719,
        size.width * 0.8010646,
        size.height * 0.1773819,
        size.width * 0.8010646,
        size.height * 0.1773819);
    path_0.lineTo(size.width * 0.8292109, size.height * 0.1627587);

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002262198;
    paint0Stroke.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class Rectangles extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(0, 0, size.width * 0.8783212, size.height * 0.8696352),
        paint0Fill);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01568431;
    paint1Stroke.color = Color(0xffa4748c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.007842153, size.height * 0.008052178,
            size.width * 0.8626368, size.height * 0.8535309),
        paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class SmullCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5000000, size.height * 0.5000000),
            width: size.width,
            height: size.height),
        paint0Fill);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03225806;
    paint1Stroke.color = Color(0xffa4748c).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5000000, size.height * 0.5000000),
            width: size.width * 0.9677419,
            height: size.height * 0.9666667),
        paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class BottomGradientCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff916af1).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5000000, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TopCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xffd26fd3).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5000000, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// ignore: camel_case_types
class smallCircles extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5000000, size.height * 0.5000000),
            width: size.width,
            height: size.height),
        paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SmallCircleGrey extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xffBBAEF6).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5000000, size.height * 0.5000000),
            width: size.width,
            height: size.height),
        paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
