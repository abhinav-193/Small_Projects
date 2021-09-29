import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewENTJ extends StatelessWidget {
  const OverviewENTJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENTJ Personality Type\n',size: 25,)),
              HeadingText(heading: "ENTJs are strategic thinkers who are driven to bring about change. They are fast to spot inefficiencies and devise new solutions, and they enjoy creating long-term plans to achieve their goals. They are usually articulate and quick-witted, and excel in logical reasoning.\n\nENTJs are analytical and objective people who enjoy providing order to their surroundings. The ENTJ notices weaknesses in a system and appreciates the process of identifying and implementing a better solution. ENTJs are forceful and prefer being in charge; they perceive themselves as leaders and managers, arranging people and procedures to accomplish their objectives.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ENTJ stand for?\n',size: 25,)),
              HeadingText(heading: "ENTJ stands for Extraverted, iNtuitive, Thinking, Judging. ENTJ indicates a person who is energized by time spent with others (Extraverted), who focuses on ideas and concepts rather than facts and details (iNtuitive), who makes decisions based on logic and reason (Thinking) and who prefers to be planned and organized rather than spontaneous and flexible (Judging). ENTJs are sometimes referred to as Commander personalities because of their innate drive to lead others.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ENTJ Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ENTJs are generally driven by professional success and like putting in long hours. They are driven by ambition and a desire to attain power and influence. Making decisions is a vocation for the ENTJ. They want to be able to make the decision and set things in action. The ENTJ personality type is known for being direct and determined. They might be critical or brusque in their pursuit of a goal, as they are driven to get things done.\n\nThey are usually sociable and outgoing, yet they are not always aware of other people's emotional subtleties. They enjoy collaborating with others to achieve a common objective, but they may not have time to pay attention to their own feelings. They want to be productive, competent, and influential, and they are laser-focused on achieving those goals.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ENTJ?\n',size: 25,)),
              HeadingText(heading: "ENTJs are natural leaders who often take command in any situation. They usually have a clear vision for the future and intuitively know how to get people and systems to work toward that vision. They approach every issue with the mindset of an efficiency analyst, and they aren't afraid to point out areas where things may be done better. Their ideas are a foregone conclusion for the ENTJ: it's only a matter of time before they can move the players to get everything done.\n\nENTJs are sociable by nature and appear to have a preconceived notion of how a person will fit into their great design from the time they meet them. They are usually forthright and might come across as arrogant or presumptuous; they assess people and circumstances fast and have a hard time being anything other than honest about what they observe. ENTJs are sensitive to power dynamics and want places and individuals with power. They are characeristically ambitious and frequently devoted to their jobs. ENTJs like their work more than any other personality type, and some may even say that it is what they do for leisure.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ENTJ personality type?',size: 25,)),
              HeadingText(heading: "ENTJ is one of the least common types in the population, and the rarest type among women (with INTJ). ENTJs make up:\n\n2% of the general population\n3% of men\n1% of women\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
