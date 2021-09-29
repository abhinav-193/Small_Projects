import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewISFP extends StatelessWidget {
  const OverviewISFP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISFP Personality Type\n',size: 25,)),
              HeadingText(heading: "ISFPs are gentle caregivers who love their environment with joyful, low-key enthusiasm and live in the present moment. They are adaptable and spontaneous, preferring to go with the flow and take in everything life has to offer. ISFPs are quiet and reserved, and they can be difficult to get to know. The ISFP, on the other hand, is warm and pleasant to people who know them well, eager to participate in life's numerous experiences.\n\nISFPs have a keen sense of beauty and actively seek it out in their environment. They are sensitive to sensory input and generally have a natural artistic flair. ISFPs are extremely good at manipulating items, and they can master creative instruments like paintbrushes and sculptor's knives./n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ISFP stand for?\n',size: 25,)),
              HeadingText(heading: "ISFP stands for Introverted, Sensing, Feeling, Perceiving. ISFP indicates a person who is energized by time spent alone (Introverted), who focuses on facts and details rather than ideas and concepts (Sensing), who makes decisions based on feelings and values (Feeling), and who prefers to be spontaneous and flexible rather than planned and organized (Perceiving). ISFPs are sometimes referred to as Composer personalities because of their innate sensibility for creating aesthetically pleasing experiences.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ISFP Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ISFPs are tolerant and nonjudgmental by nature, yet they are fiercely loyal to the people and causes they care about. They make an effort to embrace and encourage others, but their underlying convictions ultimately govern them. They'll usually look for methods to be accommodating, and they could have a hard time coping with individuals who aren't.\n\nISFPs have a reputation for being modest and underestimating themselves. They prefer not to be the center of attention, preferring instead to play a supporting role and will avoid planning and organizing as much as possible. They are sensitive and responsive, stepping in to do what needs to be done and feeling fulfilled by their personal sense of helping others.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ISFP?\n',size: 25,)),
              HeadingText(heading: "Because they prefer to express themselves through action rather than words, ISFPs might be harder to spot. They may appear cold or aloof at first, but you can see their caring in the considerate things they do for others if you look closely. They are acutely aware of other people's practical needs and frequently intervene with calm, unassuming support at precisely the right time. ISFPs tend to play a supportive role and are rarely forceful or attention-seeking. They are usually accepting and tolerant of others.\n\nISFPs are known for their refined creative sensibility. They are color, texture, and tone sensitive, and they typically have an intuitive feel of what would look well. When it comes to aesthetically arranging things, they are typically naturals, and they like the process of absorbing the sensations around them. ISFPs prefer to enjoy the simple pleasures of life, such as friends, family, and sensory delights such as food, music, and art. They are rarely ambitious, choosing instead to enjoy the simple pleasures of life, such as friends, family, and sensory delights such as food, music, and art.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ISFP personality type?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "ISFP is the fourth most common type in the population. ISFPs make up:\n\n9% of the general population\n10% of women\n8% of men",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
