import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewENTP extends StatelessWidget {
  const OverviewENTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENTP Personality Type\n',size: 25,)),
              HeadingText(heading: "ENTPs are creative problem solvers who are driven to find novel solutions to difficult situations. They are inquisitive and perceptive, eager to learn about the people, institutions, and principles that surround them. Visionaries are open-minded and unusual persons who desire to analyse, understand, and influence others.\n\nENTPs enjoy tinkering with concepts and conversing with others. They keep the upper hand with other people by poking fun at their habits and quirks with their quick wit and knowledge of words. While the ENTP enjoys testing people, they are usually content to live and let live in the end.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ENTP stand for?\n',size: 25,)),
              HeadingText(heading: "ENTP stands for Extraverted, iNtuitive, Thinking, Perceiving. ENTP indicates a person who is energized by time spent with others (Extraverted), who focuses on ideas and concepts rather than facts and details (iNtuitive), who makes decisions based on logic and reason (Thinking) and who prefers to be spontaneous and flexible rather than planned and organized (Perceiving). ENTPs are sometimes referred to as Visionary personalities because of their passion for new, innovative ideas.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ENTP Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ENTPs thrive on a challenge and are frequently inspired by a problem that others believe is unsolvable. They are confident in their ability to think creatively, and they may believe that others are too enslaved by tradition to see things in a different light. When dealing with the world around them, the Visionary relies on their ingenuity and rarely thinks it essential to prepare. They will frequently throw themselves into a new scenario and trust their ability to adjust as they go.\n\nENTPs are experts of re-inventing the wheel, and they frequently refuse to repeat a task. They question the status quo and frequently disregard them. The Visionary, who would rather attempt a novel approach (or two) than follow the conventional, finds established procedures dull.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ENTP?\n',size: 25,)),
              HeadingText(heading: "ENTPs are often pleasant and engaging. They desire to be thought of as intelligent, therefore they may strive to impress people with their quick wit and biting humour. They are fascinated by the world around them and seek to understand how things work. The ENTP, on the other hand, is built to break the rules of the universe. They enjoy looking for flaws in the system and figuring out how to take advantage of them. This isn't to argue that the Visionary is evil; they simply find regulations restricting and believe that there is almost always a better, faster, or more interesting way to accomplish things that hasn't been considered.\n\nThe ENTP is known for being a risk-taker who is quick to discuss a new business concept or product. They are self-assured and inventive, and they are usually eager to share their many brilliant ideas. The ENTP's zeal for innovation is contagious, and they are typically adept at persuading others to support their ideas. However, they are mostly “big-picture” thinkers who may struggle to recall or describe specific details. They are usually more interested in exploring a concept than in making it a reality, and if they don't follow through on their many ideas, they can appear unreliable.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ENTP personality type?',size: 25,)),
              HeadingText(heading: "ENTP is one of the rarer types in the population. ENTPs make up:\n\n3% of the general population\n4% of men\n2% of women\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
