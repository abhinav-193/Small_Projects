import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewENFP extends StatelessWidget {
  const OverviewENFP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENFP Personality Type\n',size: 25,)),
              HeadingText(heading: "ENFPs are people-centered creators who have a contagious excitement for new ideas, people, and activities and a focus on possibilities. ENFPs are energetic, warm, and enthusiastic persons who enjoy assisting others in realising their creative potential.\n\nENFPs are quick and expressive communicators who use their wit, humour, and language skills to tell interesting stories. ENFPs are creative and imaginative, and they often have a strong artistic side. They are drawn to art because it allows them to express creative ideas and gain a better knowledge of the human condition.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ENFP stand for?\n',size: 25,)),
              HeadingText(heading: "Extraversion, iNtuition, Feeling, and Perceiving (ENFP) are four key personality qualities. Each of the four letters in the ENFP code represents a significant personality feature associated with this personality type. ENFPs are stimulated by social interaction (extroverted), focus on ideas and concepts rather than facts and specifics (iNtuitive), make decisions based on feelings and values (Feeling), and like to be spontaneous and flexible rather than planned and organised (Perceiving).\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ENFP Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ENFPs are persons who are fascinated by others and are focused with uncovering the hidden meaning of people and ideas. They are looking for an authentic encounter with a high level of emotional intensity. Details and repetition bore ENFPs, therefore they seek out circumstances that provide an escape from the commonplace. ENFPs are drawn to novelty because they have a diverse set of interests and friends from all walks of life.\n\nENFPs value uniqueness and often consider pleasure to be the most important goal in life, both for themselves and for others. Personal freedom and self-expression are very important to them, and they want to be allowed to go wherever inspiration takes them.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ENFP?\n',size: 25,)),
              HeadingText(heading: "ENFPs enjoy discussing individuals, not just the facts, but also what motivates, inspires, and inspires them in their lives. They'll often open up about their own ambitions and want to learn about others'. The ENFP is unlikely to pass judgement on anyone's dream, and will enthusiastically discuss even the most inventive and absurd of visions. They enjoy exploring new ideas, and nothing deflates them faster than discussing dry facts or harsh truth.\n\nENFPs are sometimes unusual and appear disorganised; they are not in tune with their physical surroundings. They are more prone to focus on connecting with other people or on exploring their own imagination and self-expression, thus they often ignore the subtleties. They have little patience for the commonplace and prefer to live life to the fullest. ENFPs generally have a creative streak and may appear to be artistic. Many people have established their own unique and eccentric personal style.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ENFP personality type?',size: 25,)),
              HeadingText(heading: "ENFP is a moderately common personality type, and is the fifth most common among women. ENFPs make up:\n\n8% of the general population\n10% of women\n6% of men\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
