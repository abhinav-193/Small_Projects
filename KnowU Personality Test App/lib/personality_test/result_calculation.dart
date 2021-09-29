import 'package:flutter/cupertino.dart';


int ieScore = 30;
int snScore = 12;
int ftScore = 30;
int jpScore = 18;

Map personalityType = {
  "TypeIE": "",
  "TypeSN": "",
  "TypeFT": "",
  "TypeJP": "",
};
List newPercentage = [iePercentage, snPercentage, ftPercentage, jpPercentage];




double iE,sN,fT,jP;
int newiePercentageLeft, newsnPercentageLeft, newftPercentageLeft, newjpPercentageLeft;
int newiePercentageRight, newsnPercentageRight, newftPercentageRight, newjpPercentageRight;

List newArrLeft = [newiePercentageLeft, newsnPercentageLeft, newftPercentageLeft, newjpPercentageLeft];
List newArrRight = [newiePercentageRight, newsnPercentageRight, newftPercentageRight, newjpPercentageRight];


double iePercentageLeft, snPercentageLeft, ftPercentageLeft, jpPercentageLeft;
double iePercentageRight, snPercentageRight, ftPercentageRight, jpPercentageRight;
List arrLeft = [iePercentageLeft, snPercentageLeft, ftPercentageLeft, jpPercentageLeft];
List arrRight = [iePercentageRight, snPercentageRight, ftPercentageRight, jpPercentageRight];
void calcResult(List radioValue) {
  int ieScore = 30;
  int snScore = 12;
  int ftScore = 30;
  int jpScore = 18;

  ieScore = ieScore -
      radioValue[2] -
      radioValue[6] -
      radioValue[10] +
      radioValue[14] -
      radioValue[18] +
      radioValue[22] +
      radioValue[26] -
      radioValue[30];
  snScore = snScore +
      radioValue[3] +
      radioValue[7] +
      radioValue[11] +
      radioValue[15] +
      radioValue[19] -
      radioValue[23] -
      radioValue[27] +
      radioValue[31];
  ftScore = ftScore -
      radioValue[1] +
      radioValue[5] +
      radioValue[9] -
      radioValue[13] -
      radioValue[17] +
      radioValue[21] -
      radioValue[25] -
      radioValue[29];
  jpScore = jpScore +
      radioValue[0] +
      radioValue[4] -
      radioValue[8] +
      radioValue[12] -
      radioValue[16] +
      radioValue[20] -
      radioValue[24] +
      radioValue[28];
  iePercentage = (ieScore - 8) / 32 * 100;
  snPercentage = (snScore - 8) / 32 * 100;
  ftPercentage = (ftScore - 8) / 32 * 100;
  jpPercentage = (jpScore - 8) / 32 * 100;
  iePercentageLeft = iePercentage;
  snPercentageLeft = snPercentage;
  ftPercentageLeft = ftPercentage;
  jpPercentageLeft = jpPercentage;


  iePercentageRight = 100-iePercentage;
  snPercentageRight = 100-snPercentage;
  ftPercentageRight = 100-ftPercentage;
  jpPercentageRight = 100-jpPercentage;

  newiePercentageLeft = iePercentage.toInt();
  newsnPercentageLeft = snPercentage.toInt();
  newftPercentageLeft = ftPercentage.toInt();
  newjpPercentageLeft = jpPercentage.toInt();


  newiePercentageRight = 100-iePercentage.toInt();
  newsnPercentageRight = 100-snPercentage.toInt();
  newftPercentageRight = 100-ftPercentage.toInt();
  newjpPercentageRight = 100-jpPercentage.toInt();

  if(iePercentageLeft>50){
    iE=iePercentageLeft;
  }else{
    iE= iePercentageRight;
  }

  if(snPercentageLeft>50){
    sN= snPercentageLeft;
  }else{
    sN= snPercentageRight;
  }

  if(jpPercentageLeft>50){
    jP= jpPercentageLeft;
  }else{
    jP= jpPercentageRight;
  }

  if(ftPercentageLeft>50){
    fT=ftPercentageLeft;
  }else{
    fT= ftPercentageRight;
  }


  newArrLeft = [newiePercentageLeft, newsnPercentageLeft, newftPercentageLeft, newjpPercentageLeft];
  newArrRight = [newiePercentageRight, newsnPercentageRight, newftPercentageRight, newjpPercentageRight];

  newPercentage = [iePercentage, snPercentage, ftPercentage, jpPercentage];
  arrLeft = [iePercentageLeft, snPercentageLeft, ftPercentageLeft, jpPercentageLeft];
  arrRight = [iePercentageRight, snPercentageRight, ftPercentageRight, jpPercentageRight];
  print('Bhaskar $iePercentageLeft,$snPercentageLeft,$ftPercentageLeft,$jpPercentageLeft');
  print('Gupta $iePercentageRight, $snPercentageRight, $ftPercentageRight, $jpPercentageRight');
  if (ieScore > 24) {
    personalityType['typeIE'] = 'E';
  } else {
    personalityType['typeIE'] = 'I';
  }

  if (snScore > 24) {
    personalityType['typeSN'] = 'N';
  } else {
    personalityType['typeSN'] = 'S';
  }

  if (ftScore > 24) {
    personalityType['typeFT'] = 'T';
  } else {
    personalityType['typeFT'] = 'F';
  }

  if (jpScore > 24) {
    personalityType['typeJP'] = 'P';
  } else {
    personalityType['typeJP'] = 'J';
  }
}

double iePercentage, snPercentage, ftPercentage, jpPercentage;
int ePercentage, nPercentage, tPercentage, jPercentage;
int iPercentage, sPercentage, fPercentage, pPercentage;

String printResult() {
  String result =
      "${personalityType['typeIE']}${personalityType['typeSN']}${personalityType['typeFT']}${personalityType['typeJP']}";
  print(result);
  return result;
}

////////////////////////////Result Page Components///////////////////////////////////////////////

List<String> header = [
  'Mind',
  'Energy',
  'Nature',
  'Tactics',
];
List<String> traitLeft = [
  'EXTRAVERTED',
  'INTUITIVE',
  'THINKING',
  'PROSPECTING',
];
List<String> traitRight = [
  'INTROVERTED',
  'SENSING',
  'FEELING',
  'JUDGING',
];
List<String> description = [
  'This trait determiners how we interact with our environment.',
  'This trait shows where we direct our mental energy.',
  'This trait determines how we make decisions and cope with emotions.',
  'This trait reflects our approach to work,planning and decision-making.',
];
List<Color> traitColor = [Color(0xff0BA893),Color(0xff0F7CA3),Color(0xff0BA893),Color(0xff0F7CA3),];
 
