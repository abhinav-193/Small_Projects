import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverViewINFJ extends StatelessWidget {
  const OverViewINFJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INFJ Personality Type',size: 25,)),
              SizedBox(height: 10,),

              HeadingText(heading: "INFJs are nurturers who are creative and nurturing, with a strong sense of personal integrity and a desire to help others reach their full potential. They have a knack for coming up with unique answers to people's problems, and they are both creative and dedicated.\n\nThe Counselor has a unique ability to sense other people's emotions and intentions, and will frequently know how they are feeling before they do. They have faith in their capacity to read others and trust their perceptions of others. The INFJ is a secretive type who is choosy about communicating inner thoughts and feelings. They are sensitive, yet they are also guarded.\n\n",size: 18,),

              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does INFJ stand for?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "Each of the four letters in the INFJ code represents a significant personality feature associated with this personality type. INFJs prefer to be planned and organized rather than spontaneous and flexible because they are energized by time alone (introverted), focus on ideas and concepts rather than facts and details (intuitive), make decisions based on feelings and values (feeling), and prefer to be planned and organized rather than spontaneous and flexible (Judging).\n\nBecause of their inclination to be idealistic, sympathetic, and sensitive, the INFJ personality type is also known as the 'Counselor.' The INFJ is also known by the following nicknames:\n\nThe Perceptive Visionary\nThe Adviser",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'INFJ Values and Motivations',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INFJs are guided by a set of personal ideas that have been carefully researched. They have a strong sense of utopian optimism and can clearly envision a better and more perfect future. The harsh realities of the present sometimes depress them, yet they are usually determined and persistent in taking positive action anyway\n\nThe INFJ has an innate desire to do whatever they can to improve the world. INFJs desire a meaningful life and close relationships with others. They are not known for readily sharing themselves, but they do value emotional connection with a restricted group of people. Despite the fact that their rich inner lives can make them appear secretive or private to others.",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the INFJ?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INFJs are known for being quiet, kind, and sensitive, and they are typically found listening intently to the ideas or worries of others. They have a keen sense of people and wish to aid others in their quest for understanding. INFJs aren't afraid of complicated personal issues; in fact, they’ve pretty complicated themselves, with a deep inner existence that only a few others know about\n\nBecause INFJs are such complex individuals, they may be hesitant to interact with those who do not understand or appreciate them, making them difficult to come to know. They want to get along with people and help them achieve their goals, but they are strongly devoted to their own set of values and will not follow others down a path that does not feel genuine to them. They are likely to disengage if they feel their ideas are not being honored, or if their intuition tells them that someone's motives are not pure",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the INFJ personality type?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INFJ is the rarest type in the population. It is the least common type among men, and the third least common among women (after INTJ and ENTJ). INFJs make up:\n\n2% of the general population\n2% of women\n1% of men",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
