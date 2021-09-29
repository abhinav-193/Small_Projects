import 'package:flutter/material.dart';

class LoginButtons extends StatelessWidget {
  LoginButtons({this.heading, this.logo, this.onPressed});
  final ImageProvider logo;
  final String heading;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30),),
        ),
        padding: EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: logo,
            ),
            Expanded(
              child: Text(
                heading,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),);
  }
}