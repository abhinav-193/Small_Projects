// ignore: implementation_imports
// ignore_for_file: non_constant_identifier_names, camel_case_types

// ignore: implementation_imports
import 'package:black_hole_flutter/src/navigation.dart';
import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/color_text.dart';
import 'package:project_open_jung/personality_test/personality_test.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class ChatPeople extends StatelessWidget {
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
              Color(0xff38D4A7),
              Color(0xffADECAF),
            ])),
        child: Stack(
          children: [
            Positioned(
              left: -230/ 392 * width,
              top: 200/ 782 * height,
              child: CustomPaint(
                size: Size(
                    WIDTH,
                    (WIDTH * 0.9461756373937678)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: LeftGreenCircle(),
              ),
            ),
            Positioned(
                right: -250/ 392 * width,
                top: 50/ 782 * height,
                child: CustomPaint(
                  size: Size(
                      WIDTH,
                      (WIDTH * 0.9461756373937678)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RightGreenCircle(),
                )),
            Positioned(
              top: 190/ 782 * height,
              left: 85/ 392 * width,
              child: CustomPaint(
                size: Size(
                    WIDTH * 0.6,
                    (WIDTH * 0.6)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: SmallCircle(),
              ),
            ),
            Positioned(
              top: 220/ 782 * height,
              left: 115/ 392 * width,
              child: CustomPaint(
                size: Size(
                    WIDTH * 0.45,
                    (WIDTH * 0.45)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: SmallCircle(),
              ),
            ),
            Positioned(
              top: 160/ 782 * height,
              left: 55/ 392 * width,
              child: CustomPaint(
                size: Size(
                    WIDTH * 0.75,
                    (WIDTH * 0.75)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: SmallCircle(),
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
              top: 180/ 782 * height,
              left: 30/ 392 * width,
              child: Image.asset('images/leftchat.png'),
            ),
            Positioned(
              top: 320/ 782 * height,
              right: 10/ 392 * width,
              child: Image.asset('images/rightchat.png'),
            ),
            Positioned(
              bottom: 555/ 782 * height,
              left: 25/ 392 * width,
              child: Image.asset(
                'images/8.png',
                scale: 13,
              ),
            ),
            Positioned(
              top: 320/ 782 * height,
              right: 9/ 392 * width,
              child: Image.asset(
                'images/9.png',
                scale: 11,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ColoredText(heading: 'Post your result online\nand chat with others',size: 25,color: Colors.white,),
                    SizedBox(height: 20,),
                    ColoredText(heading: 'Find out how many people are like you\n'
                        'out there and engage with them',size: 16,color: Colors.white,),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomPaint(
                          size: Size(WIDTH*0.04, (WIDTH*0.04).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: SmallCircleGrey(),
                        ),

                        SizedBox(width: 10,),
                        CustomPaint(
                          size: Size(WIDTH*0.04, (WIDTH*0.04).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: SmallCircleGrey(),
                        ),
                        SizedBox(width: 10,),
                        Hero(
                          tag:'tog',
                          child: CustomPaint(
                            size: Size(WIDTH*0.04, (WIDTH*0.04).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                            painter: smallCircles(),
                          ),
                        ),
                        SizedBox(width: 180/ 392 * width,),
                        TextButton(onPressed: () {
                          context.navigator
                              .push<void>(SwipeablePageRoute(builder: (_) => PersonalityTest()));
                        }, child:Container(
                          padding: EdgeInsets.all(10),

                          child: Center(child: Hero(tag:'next',child: ColoredText(heading: 'Take Test',size: 15,color: Colors.white,))),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),  // radius of 10
                            color: Color(0xffF9526A),  // green as background color
                          ),
                        ),),

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
      ..color = Color(0xff3BD4A6)
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

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class LeftGreenCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff9ce9b3).withOpacity(1.0);
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

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RightGreenCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff9ce9b3).withOpacity(1.0);
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

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class SmallCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.007142857;
    paint1Stroke.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5000000, size.height * 0.5000000),
            width: size.width * 0.9928571,
            height: size.height * 0.9927007),
        paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class smallCircles extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint0Fill = Paint()..style=PaintingStyle.fill;
    paint0Fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawOval(Rect.fromCenter(center:Offset(size.width*0.5000000,size.height*0.5000000),width:size.width,height:size.height),paint0Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SmallCircleGrey extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint0Fill = Paint()..style=PaintingStyle.fill;
    paint0Fill.color = Color(0xff9DEAD3).withOpacity(1.0);
    canvas.drawOval(Rect.fromCenter(center:Offset(size.width*0.5000000,size.height*0.5000000),width:size.width,height:size.height),paint0Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}