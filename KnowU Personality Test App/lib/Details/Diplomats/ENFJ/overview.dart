import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewENFJ extends StatelessWidget {
  const OverviewENFJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENFJ Personality Type\n',size: 25,)),
              HeadingText(heading: "Idealist organizers, ENFJs are compelled to put their vision of what is best for humanity into action. Because of their capacity to identify potential in others and their charm in swaying others to their ideals, they frequently act as catalysts for human growth. They are committed to their principles and vision, and they are enthusiastic about the possibilities that exist for people.\n\nENFJs are enthusiastic and determined people who usually have a lot on their plates. They are sensitive to others' needs and intensely aware of human misery; nonetheless, they are also hopeful and forward-thinking, identifying opportunities for progress intuitively. The ENFJ is ambitious, but not selfishly so: they believe they have a personal responsibility to make the world a better place\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does ENFJ stand for?\n',size: 25,)),
              HeadingText(heading: "ENFJ stands for Extraverted, iNtuitive, Feeling, Judging. ENFJ indicates a person who is energized by time spent with others (Extraverted), who focuses on ideas and concepts rather than facts and details (iNtuitive), who makes decisions based on feelings and values (Feeling), and who prefers to be planned and organized rather than spontaneous and flexible (Judging). ENFJs are sometimes referred to as Teacher personalities because of their interest in helping others develop and grow.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ENFJ Values and Motivations\n',size: 25,)),
              HeadingText(heading: "ENFJs are motivated by a strong feeling of selflessness and compassion for others. They have a natural awareness of others' emotions and frequently serve as an emotional barometer for others around them. Their compassion, on the other hand, is not limited to those close to them: they are frequently humanitarian in nature and may feel genuine worry for the evils of humanity as a whole. They are more likely to be affected by other people's sentiments and to feel prompted to intervene when they observe individuals in distress.\n\nENFJs seek close, supportive relationships with people and believe that cooperation is the most effective method to accomplish goals. They want to be liked and are sensitive to both positive and negative comments. They expect the best not only from themselves, but also from others, and they may be disappointed if others aren't as sincere in their goals as the ENFJ. ENFJs seek to be valued members of their families, groups, and communities by working hard to establish excellent relationships.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the ENFJ?\n',size: 25,)),
              HeadingText(heading: "ENFJs are natural teachers, and they are frequently observed arranging people to participate in educational activities. They have a tendency to take command of a situation and lead a group of people toward activities and experiences that will help them learn and grow. They naturally recognize people's potential and, with charisma and kindness, encourage them to further develop their strengths. They are usually vivacious and industrious, and they are often clearly energized when leading others to new discoveries.\n\nENFJs are often skilled communicators who excel at connecting with others through words. They have a keen sense of people and like discussing relationships. They like assisting others with personal issues and sharing their observations of people, their feelings, and their motivations. They are empathic to the point of becoming overly interested at times, and if they are exposed to too much unpleasant emotion, they can get weary.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the ENFJ personality type?',size: 25,)),
              HeadingText(heading: "ENFJ is one of the less common types in the population, especially for men. Among men, ENFJ is the second rarest type. ENFJs make up:\n\n3% of the general population\n3% of women\n2% of men\n",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
