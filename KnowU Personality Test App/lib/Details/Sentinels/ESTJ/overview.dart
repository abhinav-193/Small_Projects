import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewESTJ extends StatelessWidget {
  const OverviewESTJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESTJ Personality Type\n',size: 25,)),
              HeadingText(heading: "ESTJs are dedicated traditionalists who thrive on taking command of initiatives and people. ESTJs are orderly, rule-following, and conscientious people who like to get things done. They approach undertakings in a systematic, logical manner.\n\nESTJs are natural organisers who seek to bring order to their surroundings. Predictability is important to them, and they prefer things to go in a logical order. When they notice a lack of organisation, the ESTJ is quick to set systems and guidelines so that everyone is on the same page.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ESTJ stand for?\n',size: 25,)),
              HeadingText(heading: "ESTJ stands for Extraverted, Sensing, Thinking, Judging. ESTJ indicates a person who is energized by time spent with others (Extraverted), who focuses on facts and details rather than ideas and concepts (Sensing), who makes decisions based on logic and reason (Thinking) and who prefers to be planned and organized rather than spontaneous and flexible (Judging). ESTJs are sometimes referred to as Supervisor personalities because they tend to take charge and make sure things are done correctly.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ESTJ Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ESTJs are based in reality, conventional, and factual. The proof, for the ESTJ, is in the past: what has worked and what has been done in the past. They prefer proof over speculation and rely on their own personal experience. ESTJs seek out rules to follow and standards to reach, and they frequently take the lead in assisting others in meeting their goals. They are concerned with upholding social order and keeping others in line.\n\nESTJs thrive at setting goals, making decisions, and arranging resources to complete a task at home and at work, and they excel at setting goals, making decisions, and organising resources to complete a task.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ESTJ?\n',size: 25,)),
              HeadingText(heading: "ESTJs have a commanding presence in a situation, as if they know how things should go and are prepared to take charge to ensure that it does. They are goal-oriented and prioritise work over play. The ESTJ is a confident and tough-minded personality who looks to be in command virtually all of the time. ESTJs value order and typically begin organising as soon as they walk into a place. They aim to lay down the groundwork and ensure that everyone follows the guidelines.\n\nESTJs are frequently found in organisations like as clubs, associations, groups, and churches, where they frequently serve as leaders. They usually form bonds with people by sharing rituals and routines. For ESTJs, social contact frequently entails adhering to a set of rules in order to interact with people in a systematic manner. ESTJs have a strong desire for and respect for authority. They want to know who's in control, and if there aren't any, they'll assign levels of responsibility. Once a structure is established, ESTJs tend to trust authoritative individuals and expect lower-ranking people to obey them.\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
