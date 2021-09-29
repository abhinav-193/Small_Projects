import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewESFP extends StatelessWidget {
  const OverviewESFP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESFP Personality Type\n',size: 25,)),
              HeadingText(heading: "ESFPs are charismatic entertainers who captivate and enthral those around them. They are impulsive, active, and fun-loving, and they like everything around them, including food, clothing, nature, animals, and, most importantly, people.\n\nESFPs are often outgoing and talkative, with a great zest for life. They prefer to be at the centre of attention and in the middle of the activity. They have a playful, open sense of humor, and like to draw out other people and help them have a good time.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ESFP stand for?\n',size: 25,)),
              HeadingText(heading: "ESFP stands for Extraverted, Sensing, Feeling, Perceiving. ESFP indicates a person who is energized by time spent with others (Extraverted), who focuses on facts and details rather than ideas and concepts (Sensing), who makes decisions based on feelings and values (Feeling) and who prefers to be spontaneous and flexible rather than planned and organized (Perceiving). ESFPs are sometimes referred to as Performer personalities because of their playful, energetic nature.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ESFP Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ESFPs are present-oriented people who enjoy what life has to offer. They are acutely aware of their surroundings and delight in the sights, sounds, smells, and textures. ESFPs want to be busy, so they have hobbies, sports, activities, and friends to keep them occupied. They can feel overextended when there are too many fun things to do since they prefer to live in the now rather than plan ahead. An ESFP despises losing out on the good times.\n\nESFPs are known for being practical and down-to-earth, despite their fun-loving nature. They are grounded in reality and are usually acutely aware of the facts and details in their surroundings, particularly in relation to others. They are aware of others' needs and eager to help. ESFPs like assisting others, particularly in concrete, practical ways.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ESFP?\n',size: 25,)),
              HeadingText(heading: "ESFPs are often the life of the party, amusing and engaging others with their sense of humour and energy. They pay attention to whether other people are having a good time and try their utmost to ensure that everyone has a nice time. ESFPs may take the lead in getting everyone involved in an active diversion at home in their physical environment. ESFPs are generally warm and likeable, but they can be difficult to approach; while they are open, they are hesitant to be serious or talk about negative topics.\n\nESFPs are highly sensitive to their surroundings, and they gravitate toward appealing colours and textures. They frequently select textiles and accessories with care to adorn themselves. ESFPs are frequently dressed in sensuous fabrics or bright, dazzling colours to reflect their increased attentiveness. They are always on top of the current trends and enjoy introducing new places and experiences to others around them.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ESFP personality type?',size: 25,)),
              HeadingText(heading: "ESFP is the third most common type among women, and the seventh most common among men. ESFPs make up:\n\n9% of the general population\n7% of men\n10% of women\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
