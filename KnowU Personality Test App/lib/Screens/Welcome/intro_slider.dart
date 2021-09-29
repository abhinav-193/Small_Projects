/// Flutter code sample for PageView

// Here is an example of [PageView]. It creates a centered [Text] in each of the three pages
// which scroll horizontally.

import 'package:flutter/material.dart';
import 'package:project_open_jung/Screens/Welcome/page_one.dart';
import 'package:project_open_jung/Screens/Welcome/page_three.dart';
import 'package:project_open_jung/Screens/Welcome/second_page.dart';




class IntroSlider extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children:<Widget>[
        KnowYourself(),
        ImproveYourself(),
        ChatPeople(),
      ],
    );
  }
}
