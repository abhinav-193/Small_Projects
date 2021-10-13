import 'package:flutter/material.dart';
import 'package:portfolio/config/colors.dart';
import 'package:portfolio/config/size.dart';



class BankCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width / 20, vertical: height / 20),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                alignment: Alignment.topLeft,
                width: width / 1.8,
                child: Text(
                  "Mithilesh Mishra",style: TextStyle(fontSize: 30),
                )),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: height / 8,
                width: width / 1.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Number-9668371471",
                          style: TextStyle(
                              fontSize: fontSize(20),
                              fontWeight: FontWeight.w500),
                        ),

                      ],
                    ),
                    Text(
                      "Mail-princemishra88083@gmail.com",
                      style: TextStyle(
                          fontSize: fontSize(20), fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              alignment: Alignment.bottomRight,
              width: width / 6,
              height: height / 16,
              decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  boxShadow: AppColors.neumorpShadow,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
