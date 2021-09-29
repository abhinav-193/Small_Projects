import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewINTJ extends StatelessWidget {
  const OverviewINTJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INTJ Personality Type\n',size: 25,)),
              HeadingText(heading: "Analytical problem solvers, INTJs want their unique ideas to better systems and procedures. They have a talent to see improvements at work, at home, or in their own right.\n\nINTJs often like logical thinking and complicated problem-solving in an intellectual way. By evaluating the theories underlying what you see, you approach life and are normally focused on your own thoughtful study of the world around you. INTJs lean on logical processes and are far less comfortable with other people's and their emotions' unpredictable nature. Typically, their connections are independent and selective.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does INTJ stand for?\n',size: 25,)),
              HeadingText(heading: "Each of the four letters of the INTJ code signifies a key personality trait of this type. INTJs are energized by time alone (Introverted), focus on ideas and concepts rather than facts and details (iNtuitive), make decisions based on logic and reason (Thinking), and prefer to be planned and organized rather than spontaneous and flexible (Judging).\n\nThe Mastermind personalities INTJs are sometimes referred to because of their strategic, logical manner of thinking. Additional INTJ nicknames include:\n\nThe Plan for Concepts\nThe Architect\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'INTJ Values and Motivations\n',size: 25,)),
              HeadingText(heading: "INTJs are perceptive to systems and strategies and frequently view the world as a navigable chessboard. They desire to understand how systems function and how events are going: the INTJ is often capable of predicting logical results. They love a thorough application of a topic or idea and concentrating on achieving their objectives.\n\nINTJs are hungering for information and are continually striving to better their skills; they often have very high-performance expectations. They tend to have a strong interest in improving themselves and are lifelong learners who continually strive to increase their awareness and information.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the INTJ?\n',size: 25,)),
              HeadingText(heading: "INTJs are reserved and serious by nature, and they appear to spend a lot of time pondering. They are fascinated by the world around them and frequently want to understand the principles that underpin what they observe. They carefully evaluate the information they hear and, if asked a question, will usually think about it for a long time before providing a thoughtful, complicated response. INTJs think critically and clearly, and they frequently have a suggestion for a better way to do things. They can be forthright in their delivery, and they frequently speak in terms of the overall approach, leaving out the specifics.\n\nAlthough INTJs aren't typically warm or outgoing, they do have a confident demeanor with others that stems from their own confidence in their intelligence. They confidently communicate their views, and once they've reached a conclusion, they fully expect others to see the validity in their conclusions. They are perfectionists who thrive in an intellectually stimulating atmosphere. They enjoy debating new concepts and may get themselves into difficulty as a result of their no-holds-barred attitude: if someone's beliefs don't make logical sense, the Mastermind will usually point it out.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the INTJ personality type?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INTJ is the third rarest type in the population, and the rarest type among women (with ENTJ). INTJs make up:\n\n2% of the general population\n1% of women\n3% of men",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
