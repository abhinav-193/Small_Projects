import 'package:flutter/material.dart';
import 'package:project_open_jung/Details/Analysts/INTJ/career.dart';
import 'package:project_open_jung/Details/Analysts/INTJ/overview.dart';
import 'package:project_open_jung/Details/Diplomats/INFJ/career.dart';
import 'package:project_open_jung/Details/Diplomats/INFJ/overview.dart';
import 'package:project_open_jung/Details/Diplomats/INFP/career.dart';
import 'package:project_open_jung/Details/Diplomats/INFP/overview.dart';
import 'package:project_open_jung/components/text_widgets/color_text.dart';

class TabINTJ extends StatelessWidget {
  const TabINTJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration:
            BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/appbar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,

          bottom: TabBar(

            tabs: [
              Tab(child: ColoredText(heading: 'Overview',color: Colors.black,size: 20,),),
              Tab(child: ColoredText(heading: 'Career',color: Colors.black,size: 20,),),
            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            OverviewINTJ(),
            CareerINTJ(),
          ],
        ),
      ),
    );
  }
}
