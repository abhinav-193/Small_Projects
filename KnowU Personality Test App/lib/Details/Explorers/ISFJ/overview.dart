import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewISFJ extends StatelessWidget {
  const OverviewISFJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISFJ Personality Type\n',size: 25,)),
              HeadingText(heading: "ISFJs are hardworking caretakers who are devoted to their traditions and organizations. They are sensible, sensitive, and loving individuals who are driven to provide for others and shield them from life's dangers.\n\nISFJs are traditional and grounded, and they love contributing to society's established structures. They are dependable and dedicated employees who have a strong sense of social duty. They concentrate on carrying out their responsibilities, especially when other people's needs are being met. They want others to know that they are trustworthy and capable of doing what is required of them. They are meticulous and thorough, and they work until the project is completed.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ISFJ stand for?\n',size: 25,)),
              HeadingText(heading: "ISFJ stands for Introverted, Sensing, Feeling, Judging. ISFJ indicates a person who is energized by time spent alone (Introverted), who focuses on facts and details rather than ideas and concepts (Sensing), who makes decisions based on feelings and values (Feeling), and who prefers to be planned and organized rather than spontaneous and flexible (Judging). ISFJs are sometimes referred to as Protector personalities because of their interest in keeping people safe and well cared for.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ISFJ Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ISFJs are motivated by their own particular beliefs and act with integrity. They usually desire to work hard, get along with people, and fulfill their responsibilities.\n\nISFJs place a great priority on interpersonal relationships and attempt to cooperate and maintain harmony with others. They seek stability and durability in their relationships, and they have a strong attachment to their families. They are most attracted to those they know they can count on in the long run.\n\nISFJs value tradition and like learning about how things were done in the past. They are devoted to established techniques and principles, and the desire to follow the right acknowledged procedure. They place a high value on fitting in with established institutions and doing their part to keep strong, stable social structures in place. They frequently assume the position of the historian in groups, ensuring that new members respect and value old practices.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ISFJ?\n',size: 25,)),
              HeadingText(heading: "ISFJs are known for being modest and meek, and they rarely draw attention to themselves. They are frequently seen assisting people in a quiet, unassuming manner. They are dedicated and diligent, and they frequently commit to tasks and projects in order to benefit their family, friends, and communities. They are often participating in social organizations, but prefer not to be in the spotlight; instead, they prefer to be found working quietly behind the scenes to fulfill their duty.\n\nRelationships are important to ISFJs, yet they can be reserved around new individuals. They don't usually reveal personal details immediately. They are usually alert and aware of their environment, and they often give intimate information. They frequently discuss what has occurred to them and what they have witnessed firsthand. They are empathic listeners who remember specific facts about people. In the course of building a connection, they frequently like hearing things about others.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ISFJ personality type?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "ISFJ is the most common type in the U.S. population and the most common type among women. ISFJs make up:\n\n14% of the general population\n8% of men\n19% of women",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
