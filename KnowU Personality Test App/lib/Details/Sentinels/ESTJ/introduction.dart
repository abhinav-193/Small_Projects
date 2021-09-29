import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_open_jung/Details/Sentinels/ESTJ/tab_view.dart';
import 'package:project_open_jung/components/text_widgets/color_text.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:project_open_jung/personality_test/result_calculation.dart';
class ESTJ extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft,child: HeadingText(heading: 'ESTJ - The Executive',size: 27,),),
                SizedBox(height: 20,),
                HeadingText(heading: "ESTJs are dedicated traditionalists who thrive on taking control of initiatives and people. ESTJs are orderly, rule-following, and conscientious people who want to get things done. They approach tasks in a systematic, logical manner.",size: 18,),
                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabESTJ()),
                  );
                }, child: ColoredText(heading: 'Read More',size: 16,color: Color(0xff6449F9)),),
                Align(alignment: Alignment.centerLeft,child: HeadingText(heading: 'Your Test Score',size: 20,),),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PercentageCard(type: arrLeft[0]>50?'Extrovert':'Introvert',percentage: arrLeft[0]>50?arrLeft[0]/100:arrRight[0]/100,percentageInWords: arrLeft[0]>50?newArrLeft[0].toString()+'%':newArrRight[0].toString()+'%',bgColor: Color(0xffFAECF2),color: Color(0xffFC6EAA),bColor: Color(0xffFFCBE1),),
                      SizedBox(width: 10,),
                      PercentageCard(type: arrLeft[1]>50?'Intuitive':'Sensor',percentage: arrLeft[1]>50?arrLeft[1]/100:arrRight[1]/100,percentageInWords: arrLeft[1]>50?newArrLeft[1].toString()+'%':newArrRight[1].toString()+'%',bgColor: Color(0xffEFECFD),color: Color(0xff6753D8),bColor: Color(0xffD8D2F6),),
                      SizedBox(width: 10,),
                      PercentageCard(type: arrLeft[2]>50?'Thinker':'Feeler',percentage: arrLeft[2]>50?arrLeft[2]/100:arrRight[2]/100,percentageInWords: arrLeft[2]>50?newArrLeft[2].toString()+'%':newArrRight[2].toString()+'%',bgColor: Color(0xffF6DFF3),color: Color(0xffD363C7),bColor: Color(0xffE9BCE4),),
                      SizedBox(width: 10,),
                      PercentageCard(type: arrLeft[3]>50?'Perception':'Judging',percentage: arrLeft[3]>50?arrLeft[3]/100:arrRight[3]/100,percentageInWords: arrLeft[3]>50?newArrLeft[3].toString()+'%':newArrRight[3].toString()+'%',bgColor: Color(0xffBFFFD5),color: Color(0xff299B43),bColor: Color(0xffA2E1CF),),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "ESTJ's generally have the following personality traits.",size: 18,),),
                        SizedBox(height: 15,),
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Traditional values, standards, and security are important to people with this personality type. ESTJs value maintaining the status quo and are often engaged in civic responsibilities, government agencies, and community groups.",size: 15,),),
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- They may be seen as inflexible, obstinate, and unyielding because of their traditional way of life. Because of their commanding demeanor, ESTJs are naturally drawn to positions of leadership.",size: 15,),),
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Their self-assurance and strong beliefs help them succeed at putting ideas into action, but they may be critical and harsh at times, especially when others fail to meet their high expectations.",size: 15,),),
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Predictable, steady, dedicated, and practical are all words that people use to characterize ESTJs. When it comes to expressing their views, they are usually open and honest, which may come off as harsh or excessively critical at times.",size: 15,),),

                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),  // radius of 10
                      color: Color(0xffF3F1FE),  // green as background color
                    )
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "Strength",size: 18,),),
                              SizedBox(height: 15,),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Realistic and practical",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Dependable",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Self-confident",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Hard-working",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Traditional",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Good Leadership",size: 15,),),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),  // radius of 10
                            color: Color(0xffDFF6E4),  // green as background color
                          )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "Weakness",size: 18,),),
                            SizedBox(height: 15,),
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Insensitive",size: 15,),),
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Inflexible",size: 15,),),
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Argumentative",size: 15,),),
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Argumentative",size: 15,),),
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Emotionally Clueless",size: 15,),),
                            //Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Cynical",size: 15,),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),  // radius of 10
                          color: Color(0xffFFD6DE),  // green as background color
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                HeadingText(heading: 'Share your result on our page.',size: 23,),
                SizedBox(height: 5,),
                TextButton(onPressed: null, child: Container(
                  padding: EdgeInsets.all(10),
                  width: 150,
                  child: Center(child: ColoredText(heading: 'Share',size: 20,color: Colors.white,)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),  // radius of 10
                    color: Color(0xff2F9CF0),  // green as background color
                  ),
                ),)



              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PercentageCard extends StatelessWidget {
  final String type;
  final double percentage;
  final String percentageInWords;
  final Color color,bgColor,bColor;
  PercentageCard({this.percentage,this.bColor,this.percentageInWords,this.bgColor,this.type,this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),  // radius of 10
        color: bgColor,  // green as background color
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColoredText(heading: type,size: 18,color: color,),
          SizedBox(height: 5,),
          CircularPercentIndicator(
            backgroundColor: bColor,
            radius: 60.0,
            lineWidth: 10.0,
            percent: percentage,
            //center: new Text("100%"),
            progressColor: color,
          ),
          SizedBox(height: 5,),
          ColoredText(heading: percentageInWords,size: 20,color: color,),

        ],
      ),
    );
  }
}
