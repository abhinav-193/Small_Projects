import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_open_jung/Details/Explorers/ESFP/tab_view.dart';
import 'package:project_open_jung/components/text_widgets/color_text.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:project_open_jung/personality_test/result_calculation.dart';

class ESFP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
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
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: HeadingText(
                    heading: 'ESFP - The Entertainer',
                    size: 27,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                HeadingText(
                  heading:
                      "ESFPs are vivacious entertainers who charm and engage those around them. They are spontaneous, energetic, and fun-loving, and take pleasure in the things around them: food, clothes, nature, animals, and especially people.",
                  size: 18,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabESFP()),
                    );
                  },
                  child: ColoredText(
                      heading: 'Read More', size: 16, color: Color(0xff6449F9)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: HeadingText(
                    heading: 'Your Test Score',
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PercentageCard(
                        type: arrLeft[0] > 50 ? 'Extrovert' : 'Introvert',
                        percentage: arrLeft[0] > 50
                            ? arrLeft[0] / 100
                            : arrRight[0] / 100,
                        percentageInWords: arrLeft[0] > 50
                            ? newArrLeft[0].toString() + '%'
                            : newArrRight[0].toString() + '%',
                        bgColor: Color(0xffFAECF2),
                        color: Color(0xffFC6EAA),
                        bColor: Color(0xffFFCBE1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      PercentageCard(
                        type: arrLeft[1] > 50 ? 'Intuitive' : 'Sensor',
                        percentage: arrLeft[1] > 50
                            ? arrLeft[1] / 100
                            : arrRight[1] / 100,
                        percentageInWords: arrLeft[1] > 50
                            ? newArrLeft[1].toString() + '%'
                            : newArrRight[1].toString() + '%',
                        bgColor: Color(0xffEFECFD),
                        color: Color(0xff6753D8),
                        bColor: Color(0xffD8D2F6),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      PercentageCard(
                        type: arrLeft[2] > 50 ? 'Thinker' : 'Feeler',
                        percentage: arrLeft[2] > 50
                            ? arrLeft[2] / 100
                            : arrRight[2] / 100,
                        percentageInWords: arrLeft[2] > 50
                            ? newArrLeft[2].toString() + '%'
                            : newArrRight[2].toString() + '%',
                        bgColor: Color(0xffF6DFF3),
                        color: Color(0xffD363C7),
                        bColor: Color(0xffE9BCE4),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      PercentageCard(
                        type: arrLeft[3] > 50 ? 'Perception' : 'Judging',
                        percentage: arrLeft[3] > 50
                            ? arrLeft[3] / 100
                            : arrRight[3] / 100,
                        percentageInWords: arrLeft[3] > 50
                            ? newArrLeft[3].toString() + '%'
                            : newArrRight[3].toString() + '%',
                        bgColor: Color(0xffBFFFD5),
                        color: Color(0xff299B43),
                        bColor: Color(0xffA2E1CF),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: HeadingText(
                            heading:
                                "ESFP's generally have the following personality traits.",
                            size: 18,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: HeadingText(
                            heading:
                                "- ESFPs are known for their practicality and resourcefulness. They like to learn by doing rather than reading, and they hate theoretical debates. As a result, students with ESFP personality types may find it difficult to succeed in conventional educational environments. They, on the other hand, thrive in settings where they may connect with people or learn via direct experience.",
                            size: 15,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: HeadingText(
                            heading:
                                "- ESFPs are extremely present-oriented, and they don't always consider how their current activities will have long-term repercussions. They often rush into new situations and try to sort things out as they go. They also despise monotony, relish new experiences, and are always on the lookout for new adventures.",
                            size: 15,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: HeadingText(
                            heading:
                                "- They are extremely empathetic and sensitive when it comes to other people, in addition to having a great awareness of their environment. They can sense how others are feeling and react appropriately. People find them to be kind, empathetic, and easygoing.",
                            size: 15,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: HeadingText(
                            heading:
                                "- While ESFPs like being in the limelight and do not shy away from it, they are more interested in living in the moment and doing what feels right at the time.",
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // radius of 10
                      color: Color(0xffF3F1FE), // green as background color
                    )),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: HeadingText(
                                  heading: "Strength",
                                  size: 18,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: HeadingText(
                                  heading: "- Optimistic",
                                  size: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: HeadingText(
                                  heading: "- Outgoing",
                                  size: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: HeadingText(
                                  heading: "- Practical",
                                  size: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: HeadingText(
                                  heading: "- Spontaneous",
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(10), // radius of 10
                            color:
                                Color(0xffDFF6E4), // green as background color
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: HeadingText(
                                heading: "Weakness",
                                size: 18,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: HeadingText(
                                heading: "- Impulsive",
                                size: 15,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: HeadingText(
                                heading: "- Easily Bored",
                                size: 15,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: HeadingText(
                                heading: "- Not Futuristic",
                                size: 15,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: HeadingText(
                                heading: "- Self Sacrificial",
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10), // radius of 10
                          color: Color(0xffFFD6DE), // green as background color
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                HeadingText(
                  heading: 'Share your result on our page.',
                  size: 23,
                ),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: null,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 150,
                    child: Center(
                        child: ColoredText(
                      heading: 'Share',
                      size: 20,
                      color: Colors.white,
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // radius of 10
                      color: Color(0xff2F9CF0), // green as background color
                    ),
                  ),
                )
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
  final Color color, bgColor, bColor;
  PercentageCard(
      {this.percentage,
      this.bColor,
      this.percentageInWords,
      this.bgColor,
      this.type,
      this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // radius of 10
        color: bgColor, // green as background color
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColoredText(
            heading: type,
            size: 18,
            color: color,
          ),
          SizedBox(
            height: 5,
          ),
          CircularPercentIndicator(
            backgroundColor: bColor,
            radius: 60.0,
            lineWidth: 10.0,
            percent: percentage,
            //center: new Text("100%"),
            progressColor: color,
          ),
          SizedBox(
            height: 5,
          ),
          ColoredText(
            heading: percentageInWords,
            size: 20,
            color: color,
          ),
        ],
      ),
    );
  }
}
