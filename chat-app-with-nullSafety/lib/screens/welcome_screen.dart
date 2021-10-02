import 'package:auth/custom/button.dart';
import 'package:auth/screens/login_screen.dart';
import 'package:auth/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcome";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, upperBound: 100, duration: Duration(seconds: 1));
    animation = CurvedAnimation(parent: controller!, curve: Curves.decelerate);
    controller!.forward();
    controller!.addListener(() {
      // print(animation.value);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //teal.withOpacity(controller.value),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: controller!.value,
                  ),
                ),
                Text(
                  '${controller!.value.toInt()}%',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            CustomButton(
                label: "Log In",
                onpress: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                color: Colors.lightBlueAccent),
            CustomButton(
                label: "Register",
                onpress: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                color: Colors.blueAccent)
          ],
        ),
      ),
    );
  }
}
