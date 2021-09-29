import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewESFJ extends StatelessWidget {
  const OverviewESFJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESFJ Personality Type\n',size: 25,)),
              HeadingText(heading: "ESFJs are conscientious helpers who are sensitive to others' needs and enthusiastic about their obligations. They are acutely aware of their emotional surroundings and sensitive to others' feelings as well as others' perceptions of them. ESFJs like a sense of unity and collaboration in their environment, and they are ready to please and offer.\n\nESFJs value tradition and devotion, and their family and friends are usually their main priority. They give freely of their time, effort, and feelings. They frequently take on other people's problems as if they were their own, and they will try to use their considerable organising skills to bring order to other people's life.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ESFJ stand for?\n',size: 25,)),
              HeadingText(heading: "ESFJ stands for Extraverted, Sensing, Feeling, Judging. ESFJ indicates a person who is energized by time spent with others (Extraverted), who focuses on facts and details rather than ideas and concepts (Sensing), who makes decisions based on feelings and values (Feeling) and who prefers to be planned and organized rather than spontaneous and flexible (Judging). ESFJs are sometimes referred to as Provider personalities because of their interest in taking care of others in practical ways.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ESFJ Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ESFJs follow a rigid moral code and want others to do so as well. They frequently perceive things in black-and-white, right-and-wrong terms, and they aren't shy about sharing their assessments of others' actions. ESFJs strive for harmony and collaboration, and believe that the best way to achieve this is for everyone to obey the same set of norms. They have a sense of order in how people interact with one another, and they frequently take on responsibilities that allow them to assist in enforcing that order.\n\nESFJs have a strong sense of personal responsibility for the needs of others and are usually willing to participate and assist. They are usually serious and realistic, putting duty above pleasure, especially when it comes to caring for others. They prefer routine and frequently follow a set of rules that allows them to be organised and productive\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ESFJ?\n',size: 25,)),
              HeadingText(heading: "ESFJs are frequently seen in the role of host or hostess. They are quick to assume the position of organiser and want to make sure that everyone is taken care of. Committee leader, event organiser, and church volunteer are all good fits for the ESFJ. They are usually involved in their communities and work hard to ensure that the social order is maintained. ESFJs are fascinated by other people and like learning about their life. Many ESFJs enjoy gossip, and they enjoy sharing stories about the people in their lives.\n\nESFJs have a strong moral code that governs their actions and expectations of others. They frequently hold strong beliefs on how people should act and what the correct course of action is. Manners and other social rules are frequently of significant importance to ESFJs. They may think in black-and-white, right-and-wrong terms. They can be harsh with people who they believe are not acting properly, but they have the best of intentions: they simply want everyone to obey the rules so that they can all get along. The ESFJ is concerned about the well-being of those around them and may become overly interested in their troubles and concerns.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ESFJ personality type?',size: 25,)),
              HeadingText(heading: "ESFJ is the second most common type in the population. ESFJs make up:\n\n12% of the general population\n8% of men\n17% of women\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
