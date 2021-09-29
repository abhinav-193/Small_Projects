import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_open_jung/Details/Sentinels/ISTP/tab_view.dart';
import 'package:project_open_jung/components/text_widgets/color_text.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:project_open_jung/personality_test/result_calculation.dart';
class ISTP extends StatelessWidget {


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
                Align(alignment: Alignment.centerLeft,child: HeadingText(heading: 'ISTP - The Virtuoso',size: 27,),),
                SizedBox(height: 20,),
                HeadingText(heading: "ISTPs are attentive craftsmen who are interested in troubleshooting and have a basic knowledge of mechanics. They approach their surroundings with a flexible logic, seeking practical answers to the issues they face. They are self-sufficient and flexible, and they engage with the environment in a self-directed and spontaneous way.",size: 18,),
                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabISTP()),
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
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "ISTP's generally have the following personality traits.",size: 18,),),
                        SizedBox(height: 15,),
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- People with an ISTP personality are focused on getting things done. When an issue arises, they aim to identify the root cause as soon as possible and execute a remedy.",size: 15,),),
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- ISTPs are drawn to new experiences and are prone to thrill-seeking and even risk-taking. Motorcycling, hang gliding, bungee jumping, surfing, and ice hockey are all popular hazardous or fast-paced activities. They may seek excitement by pursuing professions in fields such as racing, aviation, or firefighting, for example.",size: 15,),),
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- ISTPs are known for their quiet demeanor yet easygoing demeanor toward others.",size: 15,),),
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- ISTPs are not highly attuned to other people's emotional states, and they may come off as insensitive at times. They also put space between themselves and their sensations, disregarding them until they become overpowering.",size: 15,),),
                        Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- One popular misunderstanding about ISTPs is that they are austere and quiet. While they have a quiet demeanor, this does not preclude them from feeling powerful emotions. Instead, they excel at retaining their composure, impartiality, and crisis management.",size: 15,),),
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
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Logical",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Experience-based learning",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Action-oriented",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Realistic and useful",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Likes to try new things",size: 15,),),
                              Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Self-assured and laid-back",size: 15,),),
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
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Is quickly bored",size: 15,),),
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Risk-taker",size: 15,),),
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Commitment issues",size: 15,),),
                            Align(alignment: Alignment.centerLeft,child: HeadingText(heading: "- Hard to get",size: 15,),),
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
