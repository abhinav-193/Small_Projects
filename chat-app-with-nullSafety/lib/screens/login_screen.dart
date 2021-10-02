import 'package:auth/constants.dart';
import 'package:auth/custom/button.dart';
import 'package:auth/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginScreen extends StatefulWidget {
  static const String id = "login";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email; // ? here indicate that email variable can be null 
  String? passwd;
  bool setProgress = false;
  final _auth = FirebaseAuth.instance;
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
            Flexible
                          (child: Hero(
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
                label: "Log IN",
                onpress: () async {
                  setState(() {
                    setProgress = true;
                  });
                  try {
                    final UserCredential newUser = await _auth.signInWithEmailAndPassword(
                        email: email!, password: passwd!); // ! mark means that the value  assign to email is not null-able 
                   // ignore: unnecessary_null_comparison
                   if (newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                  } catch (err) {
                    print(err);
                  }
                  setState(() {
                    setProgress = false;
                  });
                },
                color: Colors.lightBlueAccent)
          ],
        ),
      ),
    );
  }
}
