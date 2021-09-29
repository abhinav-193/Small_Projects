import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progresso/progresso.dart';


class PoppinsText extends StatelessWidget {
  const PoppinsText({
    Key key,
    this.title,
    this.fontSize,
    this.color,
  }) : super(key: key);
  final String title;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: fontSize,
              color: color,
              letterSpacing: .5),
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key key,
    this.description,
    this.header,
    this.percentageLeft,
    this.percentageRight,
    this.traitLeft,
    this.traitRight,
    this.dividerColor,
    this.progressColor,
    this.traitLeftColor,
    this.traitRightColor,
    this.start,
    this.progress,
  }) : super(key: key);
  final String header,
      description,
      percentageLeft,
      percentageRight,
      traitLeft,
      traitRight;
  final double progress,start;
  final Color dividerColor,traitLeftColor,progressColor,traitRightColor;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PoppinsText(
            title: header,
            fontSize: 24,
          ),
          PoppinsText(
            title:
                description,
            fontSize: 16,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PoppinsText(
                title: percentageLeft,
                fontSize: 35,
                color: traitLeftColor,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Progresso(
                  progress: progress,
                  start: start,
                  progressStrokeCap: StrokeCap.round,
                  backgroundStrokeCap: StrokeCap.round,
                  backgroundStrokeWidth: 10,
                  backgroundColor: Colors.grey[200],
                  progressColor: progressColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              PoppinsText(
                title: percentageRight,
                fontSize: 35,
                color: traitRightColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                traitLeft,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: traitLeftColor,
                      letterSpacing: .5),
                ),
              ),
              Text(
                traitRight,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: traitRightColor,
                      letterSpacing: .5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 10,
            color: dividerColor,
            thickness: 1.5,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
