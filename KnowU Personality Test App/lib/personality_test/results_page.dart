import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:project_open_jung/personality_test/result_calculation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components.dart';

class ResultPage extends StatefulWidget {


  final String result;
  ResultPage(this.result);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: NewGradientAppBar(
         // leading: BackButton(),
          //actions: [Image.asset('images/vibeIcon.png')],
          title: Center(
            child: Text(
              'Personality Type',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                    color: Colors.white,
                    letterSpacing: .5),
              ),
            ),
          ),
          gradient: LinearGradient(
              colors: [Color(0xff26B6EB), Color(0xff1FF1D4)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PoppinsText(
                title: 'Your Results',
                fontSize: 24,
              ),
              Text(
                widget.result,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Color(0xff0F7CA3),
                      letterSpacing: .5),
                ),
              ),
              Divider(
                height: 10,
                color: Color(0xff0F7CA3),
                thickness: 1.5,
              ),
              Expanded(
                child: ListView.builder(itemCount: 4,itemBuilder: (context, index){
                  return ResultCard(
                    header: header[index],
                    description:
                    description[index],
                    traitLeft: traitLeft[index],
                    traitRight: traitRight[index],
                    percentageLeft: arrLeft[index].toString()+'%',
                    percentageRight: arrRight[index].toString()+'%',
                    progressColor: traitColor[index],
                    dividerColor: traitColor[index],
                    traitLeftColor: arrLeft[index] > 50.0?traitColor[index]:Colors.grey,
                    traitRightColor: arrRight[index] > 50.0?traitColor[index]:Colors.grey,
                    progress: arrLeft[index] < 50.0 ? 1.0:arrLeft[index]/100,
                    start: arrLeft[index] < 50.0 ? arrLeft[index]/100: 0.0,
                  );
                }),
              ),


            ],
          ),
        ));
  }
}
