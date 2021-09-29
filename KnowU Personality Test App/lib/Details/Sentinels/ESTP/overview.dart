import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewESTP extends StatelessWidget {
  const OverviewESTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESTP Personality Type\n',size: 25,)),
              HeadingText(heading: "ESTPs are high-energy thrill seekers who excel at putting out fires, both literal and metaphorical. They interact with others and the world around them with a sense of dynamic vitality. They assess events fast and move rapidly to provide real solutions to current challenges.\n\nESTPs are often the life of the party and have a strong sense of humour, making them the life of the party. They assess their audience and change rapidly to make conversations fresh by using their great senses of observation. The ESTP loves to make things fast-paced and humorous rather than emotional or serious, despite the fact that they appear to be very social.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ESTP stand for?\n',size: 25,)),
              HeadingText(heading: "ESTP stands for Extraverted, Sensing, Thinking, Perceiving. ESTP indicates a person who is energized by time spent with others (Extraverted), who focuses on facts and details rather than ideas and concepts (Sensing), who makes decisions based on logic and reason (Thinking) and who prefers to be spontaneous and flexible rather than planned and organized (Perceiving). ESTPs are sometimes referred to as Dynamo personalities because of their high-energy, active approach to life.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ESTP Values and Motivations\n',size: 25,)),
              HeadingText(heading: "Natural athletes, ESTPs can readily navigate their physical environment and are usually well-coordinated. They like using their physical abilities to seek thrills and adventure, and they frequently enjoy putting their abilities to the test in risky or even dangerous activities.\n\nThe ESTP is preoccupied with immediate action. They are involved in their surroundings and are fast to solve difficulties. ESTPs excel in emergency situations, when they can apply their logical reasoning to situations that require rapid response. Long-term objectives are less appealing to the ESTP, who prefers to see immediate results.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ESTP?\n',size: 25,)),
              HeadingText(heading: "The ESTP's enthusiasm is likely to be the first thing you notice about them. They frequently converse, joke, and flirt with both friends and strangers. They enjoy interacting with others in a lighthearted manner and amusing those around them with their irreverent sense of humour. They keep people on their toes since they never know what the ESTP will make fun of next. ESTPs are openly outgoing with strangers, but their interest in them may fizzle out quickly; they are more likely to work a room, laughing with everyone, than to engage in deep conversation with any one person.\n\nESTPs are at ease in their physical surroundings and are continuously seeking for something to do. They are the most naturally coordinated of all the types and are frequently seen participating in sports or other physical activities, particularly those that are dangerous. They are the traditional 'adrenaline junkies' that enjoy extreme sports such as skydiving, motorbike racing, and other extreme sports.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ESTP personality type?',size: 25,)),
              HeadingText(heading: "4% of the general population\n6% of men\n3% of women\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
