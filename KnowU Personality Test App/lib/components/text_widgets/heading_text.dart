import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  HeadingText({this.heading,this.size});
  final String heading;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      textAlign: TextAlign.left,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: size,
            color: Colors.black,
        ),
      ),
    );
  }
}
