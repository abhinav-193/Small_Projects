import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueButton extends StatelessWidget {
  ContinueButton({this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF29ACF1),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            'CONTINUE',
          style: GoogleFonts.montserrat(
          textStyle: TextStyle(
          fontSize: 24.0,
          color: Colors.white,
          letterSpacing: .5),
          ),
        ),
      ),
    ),
    );
  }
}
class LogOutButton extends StatelessWidget {
  LogOutButton({this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF29ACF1),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            'LOG OUT',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  letterSpacing: .5),
            ),
          ),
        ),
      ),
    );
  }
}
