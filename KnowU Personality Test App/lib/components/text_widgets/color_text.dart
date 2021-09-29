import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColoredText extends StatelessWidget {
  ColoredText({this.heading,this.size,this.color});
  final String heading;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      textAlign: TextAlign.left,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: size,
          color: color,
        ),
      ),
    );
  }
}
