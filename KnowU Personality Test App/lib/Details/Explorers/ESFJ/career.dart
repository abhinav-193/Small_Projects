import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerESFJ extends StatelessWidget {
  const CareerESFJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESFJ at Work\n',size: 25,)),
              HeadingText(heading: "ESFJs like using their interpersonal talents to help others and processes run smoothly. They are attuned to the needs of others and endeavour to establish structures to meet those needs. ESFJs seek jobs that allow them to make a tangible difference in people's lives.\n\nESFJs love employment that gives them the opportunity to follow through and see results, as well as a high level of structure and order. They get pleasure from accomplishing things with precision and attention to detail. An ideal employment for an ESFJ demands meticulous attention to procedure and requirements, as well as the ability to arrange people and procedures methodically.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ESFJ\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Counselor\n"
                    "Social Worker\n"
                    "Real Estate Appraiser\n"
                    "Dentist\n"
                    "Medical Assistant\n"
                    "Speech Pathologist\n"
                    "Fitness Trainer\n"
                    "Dental Hygienist\n"
                    "Radiation Therapist\n"
                    "Respiratory Therapist\n"
                    "Pediatrician\n"
                    "Physician Assistant\n"
                    "Public Relations Manager\n"
                    "HR Manager\n"
                    "Corporate Trainer\n"
                    "Event Coordinator\n"
                    "Funeral Director\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ESFJ Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ESFJ's innate talents and preferred work style, whereas others require patterns of thinking and behaviour that are not as natural to the ESFJ. Occupations that require the ESFJ to work outside of their natural preferences can be stressful or tiring, and thus are generally unfavourable to ESFJs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Software Developer\n"
                    "Computer Programmer\n"
                    "Power Plant Operator\n"
                    "Tech Support Specialist\n"
                    "Farmer\n"
                    "Investment Banker\n"
                    "Attorney\n"
                    "Auditor\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESFJ on a Team\n',size: 25,)),
              HeadingText(heading: "ESFJs love working in groups and collaborating with others to build a loving and supportive environment. They want everyone on the team to feel included and respected, therefore they're focused on getting everyone to contribute. Cooperation and a harmonious team environment are important to ESFJs. They prefer to seek out everyone's perspectives and try to manage the team's responsibilities to fit everyone's demands and priorities.\n\nESFJs thrive in an organised team environment, where everyone has a clear task and the rules of the game are agreed upon. They want to recognise their teammates' accomplishments, but it's simpler for them to do so when those contributions follow a set of rules. They could have a harder time dealing with teammates who want to break the rules or attempt something different.\n\nWhen ESFJs work in teams that are cooperative and conflict-free, they are most effective. They are frequently good at bringing people together, but if there is conflict or competitiveness among team members, they may become distracted from the task at hand.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESFJ as a Leader\n',size: 25,)),
              HeadingText(heading: "ESFJs are frequently eager to take responsibility and complete tasks in a planned, ordered manner. ESFJs want their teams to deliver on time and as promised, and they will expect their teams to do the same. They organise and advance a team methodically toward a goal using their communication and organisational skills.\n\nESFJs inspire others by giving particular attention to their reports and ensuring they have the resources and support they need to succeed. They want their employees to feel valued and cared for in order for them to work together and be productive.\n\nESFJs value tradition, and they are interested in learning about established practises and assisting their teams in adhering to them. They have a high regard for organisational hierarchy and want their subordinates to respect their authority as well.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
