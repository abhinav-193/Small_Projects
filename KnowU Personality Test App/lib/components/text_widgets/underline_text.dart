import 'package:flutter/material.dart';

class UnderlineText extends StatelessWidget {
  UnderlineText({this.hintText, this.fontSize});
  final String hintText;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(fontSize: fontSize,color: Colors.black),
        decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: fontSize),
            labelStyle: TextStyle(fontSize: fontSize),
            // border: InputBorder.none,
            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.lightBlueAccent),),
            fillColor: Colors.lightBlueAccent,
            focusColor: Colors.lightBlueAccent,
            hoverColor: Colors.lightBlueAccent,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintText: hintText),
      ),
    );
  }
}