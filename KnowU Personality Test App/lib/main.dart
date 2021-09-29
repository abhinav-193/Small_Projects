import 'package:flutter/material.dart';
import 'package:project_open_jung/Details/Analysts/ENTJ/overview.dart';
import 'package:project_open_jung/Details/Analysts/INTJ/tab_view.dart';
import 'package:project_open_jung/Details/Diplomats/INFJ/tab_view.dart';
import 'package:project_open_jung/Details/Diplomats/INFP/overview.dart';
import 'package:project_open_jung/Screens/Welcome/page_one.dart';
import 'package:project_open_jung/Screens/Welcome/page_three.dart';
import 'package:project_open_jung/Screens/Welcome/second_page.dart';
import 'package:project_open_jung/Screens/splash_screen.dart';


import 'package:project_open_jung/personality_test/personality_test.dart';

import 'Details/Analysts/INTJ/intj.dart';
import 'Details/Diplomats/INFP/career.dart';
import 'Details/Diplomats/INFP/tab_view.dart';
import 'Details/decoy.dart';
import 'Screens/Welcome/intro_slider.dart';
import 'Screens/Welcome/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
