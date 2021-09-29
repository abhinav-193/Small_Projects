import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerENTJ extends StatelessWidget {
  const CareerENTJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENTJ at Work\n',size: 25,)),
              HeadingText(heading: "ENTJs are drawn to positions of leadership where they may devise tactics to improve efficiency and productivity. They want to be in managerial or supervisory positions, and they want to be able to lead and create organisational change.\n\nENTJs appreciate the challenge of tackling challenging problems and learning about complicated systems in order to identify areas for improvement. ENTJs are driven by a desire to enhance systems and to lead teams to achieve their goals. They value an environment that encourages innovation and does not hold traditions in high regard.\n\nWorkplace organisation is important to ENTJs. They prefer that their work and that of their coworkers be assessed using a set of defined criteria. They value a businesslike and fair workplace in which achievement is objectively assessed and lavishly rewarded. ENTJs are driven and hardworking people who want to be rewarded for their efforts in the form of money, power, and prestige.\n\nAn ideal workplace for an ENTJ encourages competence and logical thinking, as well as clever and ambitious teammates. An ENTJ's ideal work is one that requires them to solve complicated problems through strategic planning and goal-setting.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ENTJ\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Accountant or Auditor\n"
                    "Financial Analyst\n"
                    "Labor Relations Specialist\n"
                    "Logistician\n"
                    "Management Consultant or Analyst\n"
                    "Market Research Analyst\n"
                    "Personal Financial Advisor\n"
                    "Advertising Sales Agent\n"
                    "Insurance Sales Agent\n"
                    "Real Estate Broker or Sales Agent\n"
                    "Sales Engineer\n"
                    "Civil Engineer\n"
                    "Health and Safety Engineer\n"
                    "Industrial Engineer\n"
                    "Landscape Architect\n"
                    "Mechanical Engineer\n"
                    "Surveyor\n"
                        "Art Director",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ENTJ Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ENTJ's inherent talents and preferred work style, whereas others require patterns of thinking and behaviour that are not as natural to the ENTJ. Occupations that require the ENTJ to work outside of their natural preferences can be stressful or tiring, and thus are generally unsuitable to ENTJs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Receptionist\n"
                    "Medical Assistant\n"
                    "Home Health Aide\n"
                    "Medical Records Technician\n"
                    "Dental Assistant\n"
                    "Licensed Practical Nurse\n"
                    "Child Care Provider\n"
                    "Cosmetologist\n"
                    "Chemical Engineer\n"
                    "Craft Artist\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENTJ on a Team\n',size: 25,)),
              HeadingText(heading: "ENTJs are domineering team players who prefer to be in charge. They are strategic thinkers who have a natural grasp of what needs to be accomplished and how everyone can help. ENTJs have a clear vision and are constantly looking for ways to improve systems. They may not want to spend a lot of time explaining themselves to others, and despite the clarity of their views, they may have power battles with teammates who doubt their capacity or authority to lead the team.\n\nThe ENTJ personality type is characterised by domineering team players who desire to be in charge. They are strategic thinkers with a natural understanding of what has to be done and how everyone can contribute. ENTJs have a strong sense of direction and are often looking for ways to improve systems. They may not want to spend much time justifying themselves to others, and despite the clarity of their beliefs, they may face power struggles with teammates who question their ability or authority to lead the team.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENTJ as a Leader\n',size: 25,)),
              HeadingText(heading: "The ENTJ excels in organising and implementing long-term transformation strategies in positions of leadership. They prefer to be in charge and will take on as much responsibility and decision-making authority as they can.\n\nWhen it comes to ideas, ENTJ leaders are democratic and open to diverse perspectives; nevertheless, when it comes to making a choice, they are demanding and firm. ENTJ leaders who have made up their minds are single-mindedly focused on action, leaving little opportunity for dissent.\n\nENTJs are concerned with long-term goals and vision, and they guide their teams in a systematic manner toward their objectives. They appreciate taking on difficult problems and want to strategically manage people and resources to meet deadlines. They are results-oriented and can be harsh and critical; they may struggle with employees who prefer a more personal touch. ENTJs excel at leading straight-talking, goal-oriented teams that share their eagerness to get to work.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
