import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverViewINTP extends StatelessWidget {
  const OverViewINTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INTP Personality Type\n',size: 25,)),
              HeadingText(heading: "INTPs are philosophical thinkers who are enthralled by logic, systems, and design. They are concerned with the theory and seek out the universal law that underpins all they observe. They desire to comprehend life's underlying themes in all of their complexity.\n\nINTPs are distant, analytical observers who, because they are so completely involved in thought, might appear indifferent to the world around them. They spend a lot of time in their thoughts, exploring ideas, creating connections, and trying to figure out how things operate. Life is a continuing investigation into the mysteries of the universe for the Architect.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does INTP stand for?\n',size: 25,)),
              HeadingText(heading: "The INTP type describes a person who is energized by time alone (Introverted), who focuses on ideas and concepts rather than facts and details (iNtuitive), who makes decisions based on logic and reason (Thinking), and who prefers to be spontaneous and flexible rather than planned and organized (Perceiving).\n\nINTPs are sometimes referred to as Architects’ personalities because of their intuitive understanding of complex systems. Other nicknames for the INTP include:\n\nThe Objective Analyst\nThe Logician\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'INTP Values and Motivations\n',size: 25,)),
              HeadingText(heading: "INTPs have a cold demeanor yet are enthusiastic about reason, analysis, and innovation on the inside. They are attempting to unify the ideas they have noticed in their settings by developing complicated systems of knowing. Their minds are complex and busy, and they will go to considerable lengths to come up with creative answers to intriguing challenges. The INTP is a non-traditional personality who prefers to figure out their own unique way of doing things rather than following the mainstream. The INTP is wary of assumptions and customs and is willing to dissect concepts that others take for granted. When it comes to evaluating thoughts and beliefs, INTPs are brutal, and they hold nothing sacrosanct.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the INTP?\n',size: 25,)),
              HeadingText(heading: "INTPs are known for being deeply absorbed in their own thoughts and for appearing odd and unconventional to others. The INTP's mind is a very active place, and their inward orientation can cause them to overlook little details like house décor or proper apparel. They are uninterested in casual discussion and can become enthralled while discussing physics,mathematics, computers, or the universe's greater theoretical problems. The Architect is more interested in the theory underlying it all, therefore reality is often of only passing interest to them.\n\nINTPs are known for their precision in communication, and they use carefully chosen words to explain difficult ideas. Even in the most informal of interactions, they insist on intellectual rigour and will immediately point out errors in thought or reasoning. For an INTP who is more concerned with examining logic, social niceties may fall by the wayside, and they may insult others by subjecting their deeply held values and views to logical analysis.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the INTP personality type?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INTP is one of the less common types in the population, especially for women. Among women, INTP is the fourth rarest type INTPs make up:\n\n3% of the general population\n5% of men\n2% of women",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
