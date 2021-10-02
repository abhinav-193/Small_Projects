import 'package:auth/constants.dart';
import 'package:auth/custom/button.dart';
import 'package:auth/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class RegistrationScreen extends StatefulWidget {
  static const String id = "register";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String? email;
  String? passwd;
  bool showProgress = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
                child: Hero(
                tag: "logo",
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration:
                    kInputDecoration.copyWith(hintText: "Enter the Email")),
            SizedBox(
              height: 8.0,
            ),
            TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  passwd = value;
                },
                decoration: kInputDecoration.copyWith(
                    hintText: "Enter the Password")),
            SizedBox(
              height: 24.0,
            ),
            CustomButton(
                label: "Register",
                onpress: () async {
                  setState(() {
                    showProgress = true;
                  });
                  try {
                    final newUser =
                        await _auth.createUserWithEmailAndPassword(
                            email: email!, password: passwd!);
                    // ignore: unnecessary_null_comparison
                    if (newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                    setState(() {
                      showProgress = false;
                    });
                  } catch (err) {
                    print(err);
                  }
                },
                color: Colors.lightBlueAccent)
          ],
        ),
      ),
    );
  }
}
