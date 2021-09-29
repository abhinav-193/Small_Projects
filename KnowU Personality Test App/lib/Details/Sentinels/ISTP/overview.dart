import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewISTP extends StatelessWidget {
  const OverviewISTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISTP Personality Type\n',size: 25,)),
              HeadingText(heading: "ISTPs are observant artisans who are interested in troubleshooting and have a basic understanding of mechanics. They approach their surroundings with a flexible logic, seeking practical solutions to the difficulties they face. They are self-sufficient and adaptive, and they interact with the world in a self-directed and spontaneous manner.\n\nISTPs are detail-oriented and receptive to the demands of their environment. They are good at moving swiftly and responding to emergencies because they have a keen feeling for their surroundings. The ISTP appreciates taking action and views the world with great awareness for the physical and sensory experience.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ISTP stand for?\n',size: 25,)),
              HeadingText(heading: "ISTP stands for Introverted, Sensing, Thinking, Perceiving. ISTP indicates a person who is energized by time spent alone (Introverted), who focuses on facts and details rather than ideas and concepts (Sensing), who makes decisions based on logic and reason (Thinking) and who prefers to be spontaneous and flexible rather than planned and organized (Perceiving). ISTPs are sometimes referred to as Craftsperson personalities because they typically have an innate mechanical ability and facility with tools.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ISTP Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ISTPs are fascinated by the mechanics of the world around them and have a special capacity to manipulate the tools in their surroundings. They frequently master the usage and operation of machines, instruments, and equipment by studying how things work. They are looking for comprehension in a practical sense: they want to be able to apply their technical knowledge right away and are bored by theory.\n\nISTPs are dispassionate, preferring the logic of mechanical objects to the complexities of human emotions. ISTPs are self-contained and reserved, and they value their personal space. They seek the freedom to be spontaneous and follow their own path. ISTPs are picky about who they associate with and value those who give them plenty of leeways to do their own thing.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ISTP?\n',size: 25,)),
              HeadingText(heading: "ISTPs are quiet and even aloof by nature. The ISTP is tolerant and nonjudgmental, taking in the intricacies and facts of their surroundings with ease, absorbing sensory input and watching how things work. They frequently tune in to what has to be done, tending to the current requirements of the moment in a quiet, unobtrusive manner. They prefer activity over speech, and they keep their personal lives private. ISTPs are unlikely to “open up” to new people in the traditional sense, but they may connect with others through sharing an activity or cooperating to solve an issue.\n\nISTPs are frequently mechanical and skilled with their hands. Hands-on activities like woodworking or crafts appeal to them, and they can be found tinkering with bicycles, computers, cars, or household appliances. They frequently have a natural grasp of machines as well as a surprising ability to repair them. ISTPs like danger and action, and they frequently engage in exhilarating recreational activities such as extreme sports, riding, or firearms.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ISTP personality type?',size: 25,)),
              HeadingText(heading: "The ISTP personality type is much more common among men than women. Among men, it is the third most common type in the population. Among women, it is the fourth rarest. ISTPs make up:\n\n5% of the general population\n9% of men\n2% of women\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
