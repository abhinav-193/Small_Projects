import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUnderline extends StatelessWidget {
  TextUnderline(
      {this.hintText,
      this.fontSize,
      this.controller,
      this.inputType = TextInputType.text});
  final String hintText;
  final double fontSize;
  final TextEditingController controller;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: TextField(
        keyboardType: inputType,
        controller: controller,
        style: TextStyle(
            fontFamily: 'SegoeUI',
            fontSize: fontSize, color: Colors.black),
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: fontSize),
          labelStyle: TextStyle(fontSize: fontSize),
          // border: InputBorder.none,
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent),
          ),
          fillColor: Colors.lightBlueAccent,
          focusColor: Colors.lightBlueAccent,
          hoverColor: Colors.lightBlueAccent,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),
          hintText: hintText,
        ),
      ),
    ));
  }
}

