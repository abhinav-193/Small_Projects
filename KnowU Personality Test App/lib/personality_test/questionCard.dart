import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class QuestionCard extends StatelessWidget {
  const QuestionCard(
      {Key key, @required this.radioValue, this.title, this.onChanged})
      : super(key: key);
  final Function onChanged;
  final int radioValue;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  color: Colors.black,
                  letterSpacing: .5),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.scale(
                  scale: 2,
                  child: Radio(
                    value: 5,
                    groupValue: radioValue,
                    onChanged: onChanged,
                    fillColor: MaterialStateColor.resolveWith(
                            (states) => Color(0xff0BA893)),
                  )),
              Transform.scale(
                  scale: 1.5,
                  child: Radio(
                    value: 4,
                    groupValue: radioValue,
                    onChanged: onChanged,
                    fillColor: MaterialStateColor.resolveWith(
                            (states) => Color(0xff0ED8BD)),
                  )),
              Transform.scale(
                scale: 1,
                child: Radio(
                  value: 3,
                  groupValue: radioValue,
                  onChanged: onChanged,
                  fillColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xff22D5DE)),
                ),
              ),
              Transform.scale(
                  scale: 1.5,
                  child: Radio(
                    value: 2,
                    groupValue: radioValue,
                    onChanged: onChanged,
                    fillColor: MaterialStateColor.resolveWith(
                            (states) => Color(0xff149FD2)),
                  )),
              Transform.scale(
                  scale: 2,
                  child: Radio(
                    value: 1,
                    groupValue: radioValue,
                    onChanged: onChanged,
                    fillColor: MaterialStateColor.resolveWith(
                            (states) => Color(0xff0F7CA3)),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'STRONGLY DISAGREE',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: Color(0xff0BA893),
                      letterSpacing: .5),
                ),
              ),
              Text(
                'STRONGLY AGREE',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: Color(0xff0F7CA3),
                      letterSpacing: .5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 10,
            color: Colors.greenAccent,
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
