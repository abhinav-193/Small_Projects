import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewISTJ extends StatelessWidget {
  const OverviewISTJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISTJ Personality Type\n',size: 25,)),
              HeadingText(heading: "ISTJs are responsible organizers who are driven to provide order to systems and institutions. They are neat and orderly both inside and out, and everything they do follows a set of rules. ISTJs are dependable and responsible people who desire to respect tradition and obey rules.\n\nISTJs are reliable and productive workers. ISTJs are rarely isolated, despite their introversion; they know exactly where they belong in life and wish to learn how to engage in established groups and processes. They are concerned with upholding social order and ensuring that standards are met.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ISTJ stand for?\n',size: 25,)),
              HeadingText(heading: "ISTJ stands for Introverted, Sensing, Thinking, Judging. ISTJ indicates a person who is energized by time spent alone (Introverted), who focuses on facts and details rather than ideas and concepts (Sensing), who makes decisions based on logic and reason (Thinking) and who prefers to be planned and organized rather than spontaneous and flexible (Judging). ISTJs are sometimes referred to as Inspector personalities because of their focus on details and interest in doing things correctly.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ISTJ Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ISTJs prefer to know the rules of the game and value predictability over creativity. They rely on their previous experiences to guide them, and they feel most at ease in familiar settings. ISTJs believe in the tried-and-true technique and recognize the importance of consistent practice in developing confidence in their abilities.\n\nISTJs are dedicated workers who will persevere until a task is completed. They are meticulous and analytical, and they appreciate assignments that require them to solve problems using step-by-step reasoning. They pay special attention to the smallest details and double-check everything to ensure it is proper.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ISTJ?\n',size: 25,)),
              HeadingText(heading: "ISTJs exude a serious, conservative demeanor. They want to comprehend and obey the rules of the game, so they seek predictable environments in which they can play their part. Even in social situations, you might find the ISTJ doing something beneficial (like sorting coats and hats at a party) since they're more comfortable taking command of a task than chatting up with strangers. When assigned a task, they are extremely dependable and complete it to the best of their abilities.\n\nISTJs are practical, no-nonsense people who don't like to draw attention to themselves. Their clothes and things are more utilitarian than fashionable, and they have a fondness for the classics. ISTJs are known for being direct and having a keen eye for detail. They are usually more interested in discussing facts than in delving into abstract notions or unsubstantiated theories.\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
