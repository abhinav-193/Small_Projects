import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_open_jung/Screens/Welcome/intro_slider.dart';
import 'package:project_open_jung/components/text_widgets/color_text.dart';
import 'package:project_open_jung/personality_test/result_calculation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project_open_jung/Details/Analysts/ENTJ/introduction.dart';
import 'package:project_open_jung/Details/Analysts/ENTP/introduction.dart';
import 'package:project_open_jung/Details/Analysts/INTJ/intj.dart';
import 'package:project_open_jung/Details/Analysts/INTP/introduction.dart';
import 'package:project_open_jung/Details/Diplomats/ENFJ/introduction.dart';
import 'package:project_open_jung/Details/Diplomats/ENFP/enfp_intro.dart';
import 'package:project_open_jung/Details/Diplomats/INFJ/introduction.dart';
import 'package:project_open_jung/Details/Diplomats/INFP/introduction.dart';
import 'package:project_open_jung/Details/Explorers/ESFJ/introduction.dart';
import 'package:project_open_jung/Details/Explorers/ESFP/introduction.dart';
import 'package:project_open_jung/Details/Explorers/ISFJ/introduction.dart';
import 'package:project_open_jung/Details/Explorers/ISFP/introduction.dart';
import 'package:project_open_jung/Details/Sentinels/ESTJ/introduction.dart';
import 'package:project_open_jung/Details/Sentinels/ESTP/introduction.dart';
import 'package:project_open_jung/Details/Sentinels/ISTJ/introduction.dart';
import 'package:project_open_jung/Details/Sentinels/ISTP/introduction.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

String result;
getStringValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String stringValue = prefs.getString('stringValue');
  result = stringValue;
  print(stringValue);
  return stringValue;
}

getDoubleValuesSFIE() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return double
  arrLeft[0] = prefs.getDouble('iE');
  newArrLeft[0] = arrLeft[0].toInt();
  print(arrLeft[0]);
  return arrLeft[0];
}

getDoubleValuesSFSN() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return double
  arrLeft[1] = prefs.getDouble('sN');
  newArrLeft[1] = arrLeft[1].toInt();
  print(arrLeft[1]);
  return arrLeft[1];
}

getDoubleValuesSFFT() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return double
  arrLeft[2] = prefs.getDouble('fT');
  newArrLeft[2] = arrLeft[2].toInt();
  print(arrLeft[2]);
  return arrLeft[2];
}

getDoubleValuesSFJP() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return double
  arrLeft[3] = prefs.getDouble('jP');
  newArrLeft[3] = arrLeft[3].toInt();
  print(arrLeft[3]);
  return arrLeft[3];
}

getDoubleValuesSFIER() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return double
  arrRight[0] = prefs.getDouble('iER');
  newArrRight[0] = arrRight[0].toInt();
  print(arrRight[0]);
  return arrRight[0];
}

getDoubleValuesSFSNR() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return double
  arrRight[1] = prefs.getDouble('sNR');
  newArrRight[1] = arrRight[1].toInt();
  print(arrRight[1]);
  return arrRight[1];
}

getDoubleValuesSFFTR() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return double
  arrRight[2] = prefs.getDouble('fTR');
  newArrRight[2] = arrRight[2].toInt();
  print(arrRight[2]);
  return arrRight[2];
}

getDoubleValuesSFJPR() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return double
  arrRight[3] = prefs.getDouble('jPR');
  newArrRight[3] = arrRight[3].toInt();
  print(arrRight[3]);
  return arrRight[3];
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  _SplashScreenState() {
    _timer = new Timer(const Duration(milliseconds: 4000), () {
      setState(() {
        print("IM Pressed");
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  void initState() {
    getStringValuesSF();
    getDoubleValuesSFIE();
    getDoubleValuesSFSN();
    getDoubleValuesSFFT();
    getDoubleValuesSFJP();
    getDoubleValuesSFIER();
    getDoubleValuesSFSNR();
    getDoubleValuesSFFTR();
    getDoubleValuesSFJPR();
    _SplashScreenState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 170/ 782 * height,
            left: 66,
            child: Image.asset('images/icon.png'),
          ),

          Positioned(
            top: 60/ 782 * height,
            left: 70,
            child: Image.asset('images/purple.png'),
          ),
          Positioned(
            bottom: 130/ 782 * height,
            right: 80,
            child: Image.asset('images/purple.png'),
          ),

          Positioned(
            top: 20/ 782 * height,
            right: 50,
            child: Image.asset('images/red.png'),
          ),
          Positioned(
            bottom: 20/ 782 * height,
            left: 40,
            child: Image.asset('images/red.png'),
          ),

          Positioned(
            top: 70/ 782 * height,
            left: 190,
            child: Image.asset('images/teal.png'),
          ),
          Positioned(
            bottom: 190/ 782 * height,
            left: 80,
            child: Image.asset('images/teal.png'),
          ),

          Positioned(
            top: -20/ 782 * height,
            left: -20,
            child: Image.asset('images/lime.png'),
          ),
          Positioned(
            bottom: -20/ 782 * height,
            right: -00,
            child: Image.asset('images/lime.png'),
          ),
          Positioned(
            top: 400/ 782 * height,
            right: -20,
            child: Image.asset('images/lime.png'),
          ),
          Positioned(
            top: 180/ 782 * height,
            left: 20,
            child: Image.asset('images/red.png'),
          ),

          Positioned(
            top: 460/ 782 * height,
            left: 130,
            child: TextButton(
            onPressed: () {



              _SplashScreenState();
              switch (result) {
                case 'INTJ':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => INTJ()),
                  );
                  break;
                case 'INTP':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => INTP()),
                  );
                  break;
                case 'ENTJ':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ENTJ()),
                  );
                  break;
                case 'ENTP':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ENTP()),
                  );
                  break;
                case 'INFJ':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => INFJ()),
                  );
                  break;
                case 'INFP':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => INFP()),
                  );
                  break;
                case 'ENFP':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ENFP()),
                  );
                  break;
                case 'ENFJ':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ENFJ()),
                  );
                  break;
                case 'ISTJ':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ISTJ()),
                  );
                  break;
                case 'ISTP':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ISTP()),
                  );
                  break;
                case 'ESTJ':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ESTJ()),
                  );
                  break;
                case 'ESTP':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ESTP()),
                  );
                  break;
                case 'ISFJ':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ISFJ()),
                  );
                  break;
                case 'ISFP':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ISFP()),
                  );
                  break;
                case 'ESFJ':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ESFJ()),
                  );
                  break;
                case 'ESFP':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ESFP()),
                  );
                  break;
                default:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroSlider()),
                  );
              }
            },
            child: Container(
              padding: EdgeInsets.all(10),

              child: Center(
                  child: ColoredText(
                    heading: 'Get Started',
                    size: 20,
                    color: Colors.white,
                  )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // radius of 10
                color: Color(0xff2F9CF0), // green as background color
              ),
            ),
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 50,
      //     color: Colors.red,
      //     child: TextButton(
      //
      //         onPressed: () {
      //           _SplashScreenState();
      //           switch (result) {
      //             case 'INTJ':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => INTJ()),
      //               );
      //               break;
      //             case 'INTP':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => INTP()),
      //               );
      //               break;
      //             case 'ENTJ':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ENTJ()),
      //               );
      //               break;
      //             case 'ENTP':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ENTP()),
      //               );
      //               break;
      //             case 'INFJ':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => INFJ()),
      //               );
      //               break;
      //             case 'INFP':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => INFP()),
      //               );
      //               break;
      //             case 'ENFP':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ENFP()),
      //               );
      //               break;
      //             case 'ENFJ':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ENFJ()),
      //               );
      //               break;
      //             case 'ISTJ':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ISTJ()),
      //               );
      //               break;
      //             case 'ISTP':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ISTP()),
      //               );
      //               break;
      //             case 'ESTJ':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ESTJ()),
      //               );
      //               break;
      //             case 'ESTP':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ESTP()),
      //               );
      //               break;
      //             case 'ISFJ':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ISFJ()),
      //               );
      //               break;
      //             case 'ISFP':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ISFP()),
      //               );
      //               break;
      //             case 'ESFJ':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ESFJ()),
      //               );
      //               break;
      //             case 'ESFP':
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => ESFP()),
      //               );
      //               break;
      //             default:
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => Decoy()),
      //               );
      //           }
      //         }
      //     ),
      //   ),
      // ),
    );
  }
}

