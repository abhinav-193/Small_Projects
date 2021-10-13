import 'package:flutter/material.dart';
import 'package:project_open_jung/Screens/Welcome/intro_slider.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashScreen2(),
  ));
}

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => new _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.asset('images/icon.png',scale: 10,),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}

// ignore: must_be_immutable
class AfterSplash extends StatelessWidget {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return  i==1?IntroSlider():SplashScreen();
  }
}