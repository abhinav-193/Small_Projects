import 'package:flutter/material.dart';

const KBoxDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('images/back.png'),
    fit: BoxFit.cover,
  ),
);
const KLinearGradientColor =  LinearGradient(
    begin: Alignment(0,-1),
    end: Alignment(0,0),
    colors: [
      Color(0xFF15FFCF),
      Color(0xFF1DDDDD),
      Color(0xFF24C1E8),
      Color(0xFF28B0EF),
      Color(0xFF2AABF2),
    ],
);
const KLinearGradientColorAngle =  LinearGradient(
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
  colors: [
    Color(0xFF15FFCF),
    Color(0xFF1DDDDD),
    Color(0xFF24C1E8),
    Color(0xFF28B0EF),
    Color(0xFF2AABF2),
  ],
);
const KLinearGradientWhite =  LinearGradient(
    begin: Alignment(0,-1),
    end: Alignment(0,0),
    colors: [
      Colors.white,
      Colors.white,

    ]);
const KGenderBoxDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('images/genderbox.png'),
    fit: BoxFit.cover,
  ),
);
const KGenderBoxDecorationWhite = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('images/whiteBox.png'),
    fit: BoxFit.cover,
  ),
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);


const KInputDecoration = InputDecoration(
  hintText: 'Enter your email',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);


class Profile {
  final List<String> photos;
  final String name;
  final String bio;
  final String age;


  Profile({this.photos, this.name, this.bio, this.age});
}