import 'package:flutter/material.dart';

enum WidgetMarker { About, Skills, Achievements }

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DEMO"),
        ),
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BodyWidgetState();
}

class BodyWidgetState extends State<BodyWidget> with SingleTickerProviderStateMixin<BodyWidget> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.About;
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedWidgetMarker = WidgetMarker.About;
                });
              },
              child: Text("About", style: TextStyle(color: (selectedWidgetMarker == WidgetMarker.About) ? Colors.black : Colors.black12),),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedWidgetMarker = WidgetMarker.Skills;
                });
              },
              child: Text("Skills", style: TextStyle(color: (selectedWidgetMarker == WidgetMarker.Skills) ? Colors.black : Colors.black12)),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedWidgetMarker = WidgetMarker.Achievements;
                });
              },
              child: Text("Achievements", style: TextStyle(color: (selectedWidgetMarker == WidgetMarker.Achievements) ? Colors.black : Colors.black12)),
            ),
          ],
        ),
        FutureBuilder(
          future: _playAnimation(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return getCustomContainer();
          },
        )
      ],
    );
  }

  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.About:
        return getGraphContainer();
      case WidgetMarker.Skills:
        return getStatsContainer();
      case WidgetMarker.Achievements:
        return getInfoContainer();
    }
    return getGraphContainer();
  }

  Widget getGraphContainer() {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        child: Text("ABOUT YOURSELF",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
      ),
    );
  }

  Widget getStatsContainer() {
    return SafeArea(

      child: Container(
          child:Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text("SKILL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(

                child: Text("About the skill",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                        fontSize: 19.0)),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text("SKILL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(

                child: Text("About the skill",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                        fontSize: 19.0)),
              ),
            ],

          )

      ),
    );
  }

  Widget getInfoContainer() {
    return SafeArea(

      child: Container(
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text("Year:Achievement",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19.0)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(

              child: Text("About the Achievement",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                      fontSize: 19.0)),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text("Year:Achievement",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19.0)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(

              child: Text("About the Achievement",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                      fontSize: 19.0)),
            ),
          ],

        )

      ),
    );
  }
}