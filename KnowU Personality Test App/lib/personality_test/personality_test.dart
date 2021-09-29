import 'package:flutter/material.dart';
import 'package:project_open_jung/Details/Analysts/ENTJ/introduction.dart';
import 'package:project_open_jung/Details/Analysts/ENTP/introduction.dart';
import 'package:project_open_jung/Details/Analysts/INTJ/intj.dart';
import 'package:project_open_jung/Details/Analysts/INTP/introduction.dart';
import 'package:project_open_jung/Details/Diplomats/ENFJ/introduction.dart';
import 'package:project_open_jung/Details/Diplomats/ENFP/enfp_intro.dart';
import 'package:project_open_jung/Details/Diplomats/INFJ/introduction.dart';
import 'package:project_open_jung/Details/Diplomats/INFP/introduction.dart';
import 'package:project_open_jung/Details/Explorers/ESFJ/introduction.dart';
import 'package:project_open_jung/Details/Explorers/ESFP/introduction.dart';
import 'package:project_open_jung/Details/Explorers/ISFJ/introduction.dart';
import 'package:project_open_jung/Details/Explorers/ISFP/introduction.dart';
import 'package:project_open_jung/Details/Sentinels/ESTJ/introduction.dart';
import 'package:project_open_jung/Details/Sentinels/ESTP/introduction.dart';
import 'package:project_open_jung/Details/Sentinels/ISTJ/introduction.dart';
import 'package:project_open_jung/Details/Sentinels/ISTP/introduction.dart';
import 'package:project_open_jung/Details/decoy.dart';
import 'package:project_open_jung/components/text_widgets/color_text.dart';
import 'package:project_open_jung/personality_test/questionCard.dart';
import 'package:project_open_jung/personality_test/questions.dart';
import 'package:project_open_jung/personality_test/result_calculation.dart';
import 'package:shared_preferences/shared_preferences.dart';




class PersonalityTest extends StatefulWidget {
  @override
  _PersonalityTestState createState() => _PersonalityTestState();
}

class _PersonalityTestState extends State<PersonalityTest> {


  addStringToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('stringValue', result);
    print(result);
  }
  addDoubleToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('iE', arrLeft[0]);
    prefs.setDouble('sN', arrLeft[1]);
    prefs.setDouble('fT', arrLeft[2]);
    prefs.setDouble('jP', arrLeft[3]);
    prefs.setDouble('iER', arrRight[0]);
    prefs.setDouble('sNR', arrRight[1]);
    prefs.setDouble('fTR', arrRight[2]);
    prefs.setDouble('jPR', arrRight[3]);
  }
  String result;
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
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 32,
                itemBuilder: (context, index) {
                  if (index == 31){
                    return TextButton(onPressed: () {
                      calcResult(radioValue);
                      result = printResult();
                      addStringToSF();
                      addDoubleToSF();
                      switch (printResult()) {
                        case 'INTJ':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => INTJ()),
                          );
                          break;
                        case 'INTP':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => INTP()),
                          );
                          break;
                        case 'ENTJ':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ENTJ()),
                          );
                          break;
                        case 'ENTP':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ENTP()),
                          );
                          break;
                        case 'INFJ':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => INFJ()),
                          );
                          break;
                        case 'INFP':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => INFP()),
                          );
                          break;
                        case 'ENFP':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ENFP()),
                          );
                          break;
                        case 'ENFJ':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ENFJ()),
                          );
                          break;
                        case 'ISTJ':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ISTJ()),
                          );
                          break;
                        case 'ISTP':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ISTP()),
                          );
                          break;
                        case 'ESTJ':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ESTJ()),
                          );
                          break;
                        case 'ESTP':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ESTP()),
                          );
                          break;
                        case 'ISFJ':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ISFJ()),
                          );
                          break;
                        case 'ISFP':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ISFP()),
                          );
                          break;
                        case 'ESFJ':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ESFJ()),
                          );
                          break;
                        case 'ESFP':
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ESFP()),
                          );
                          break;
                        default:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Decoy()),
                          );
                      }
                    }, child: Container(
                      padding: EdgeInsets.all(10),
                      width: 200,
                      child: Center(child: ColoredText(heading: 'Get Results',size: 20,color: Colors.white,)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),  // radius of 10
                        color: Color(0xff2F9CF0),  // green as background color
                      ),
                    ),
                    );




                  }
                  return QuestionCard(
                    title: questionList[index],
                    radioValue: radioValue[index],
                    onChanged: (value) {
                      setState(() {
                        radioValue[index] = value;
                      });
                    },
                  );
                }),
          ),

        ],
      ),
    );
  }
}


