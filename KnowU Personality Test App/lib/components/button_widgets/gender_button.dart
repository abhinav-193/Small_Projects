import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GenderButton extends StatelessWidget {
  GenderButton({this.label,this.colour,this.onPressed,this.colorContainer,this.gradient,this.image});
  final String label;
  final LinearGradient gradient;
  final Color colour;
  final Function onPressed;
  final DecorationImage image;
  final Color colorContainer;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(

        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          image: image,
          gradient: gradient,
          color: colorContainer,
          border: Border.all(color: Colors.lightBlueAccent,width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(30),),
        ),
        child: Center(
          child: Text(label,style: GoogleFonts.montserrat(
          textStyle: TextStyle(
          fontSize: 27.0,
          color: colour,
          letterSpacing: .5),),
        ),
      ),
    )
    );
  }
}

class DeleteAccountButton extends StatelessWidget {
  DeleteAccountButton({this.label,this.onPressed});
  final String label;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(

          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,width: 1.5),
            borderRadius: BorderRadius.all(Radius.circular(30),),
          ),
          child: Center(
            child: Text('DELETE ACCOUNT',style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF4A4A4A),
                  letterSpacing: .5),),
            ),
          ),
        )
    );
  }
}