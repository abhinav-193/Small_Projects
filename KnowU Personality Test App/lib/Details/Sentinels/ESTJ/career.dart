import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerESTJ extends StatelessWidget {
  const CareerESTJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESTJ at Work\n',size: 25,)),
              HeadingText(heading: "The ESTJ is great in organising people, projects, and operations at work. ESTJs enjoy being in charge and frequently pursue management roles, preferring to be in a position where they can make choices and implement policies and procedures.\n\nESTJs quickly establish a reputation in the job as people who can be counted on to deliver on time and according to instructions. They are dependable and enjoy the gratification of seeing a project through to completion. They can get overworked as a result of their enthusiasm to take on duty.\n\nFor an ESTJ, the ideal work environment is highly structured, with clear expectations and a well-organized authority structure. An ESTJ's ideal profession allows them to put their organising skills to work inside a set of defined procedures to generate a concrete output quickly.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ESTJ\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Sales Engineer\n"
                    "Stockbroker\n"
                    "Insurance Agent\n"
                    "Sales Manager\n"
                    "Purchasing Agent\n"
                    "Real Estate Agent\n"
                    "Hotel Manager\n"
                    "Credit Analyst\n"
                    "Budget Analyst\n"
                    "Insurance Adjuster\n"
                    "Financial Counselor\n"
                    "Project Manager\n"
                    "Management Consultant\n"
                    "Office Manager\n"
                    "Military Officer\n"
                    "Police Officer\n"
                    "Airline Pilot\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ESTJ Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ESTJ's inherent talents and preferred work style, whereas others require patterns of thinking and behaviour that are not as natural to the ESTJ. Occupations that require the ESTJ to work outside of their natural preferences can be stressful or tiring, and thus are generally unfavourable to ESTJs looking for a job\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Artist\n"
                    "Graphic Designer\n"
                    "Writer\n"
                    "Musician\n"
                    "Actor\n"
                    "Art Director\n"
                    "Cosmetologist\n"
                    "Restaurant Host\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESTJ on a Team\n',size: 25,)),
              HeadingText(heading: "ESTJs are commanding personalities who provide order and tenacity to a group, concentrating on opportunities to put structure in place and take decisive action. ESTJs don't hold back when it comes to providing their objective assessment of a scenario. They are diligent workers who are productive and results-oriented, and they want others to follow in their footsteps.\n\nESTJs are task-oriented and may become irritated with coworkers who want to talk about things for too long before taking action, especially if the conversation is too abstract or theoretical. They will try to take the initiative in making a decision and carrying out a certain plan of action. ESTJs are meticulous planners who adhere to schedules and deadlines and are hesitant to deviate from them. They want to know how things are done, and team members who don't follow the rules may irritate them.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESTJ as a Leader\n',size: 25,)),
              HeadingText(heading: "In positions of leadership, ESTJs ensure that things are done correctly, that results are consistently generated, and that standards are met. They set clear expectations for their teams, not only in terms of what needs to be done, but also in terms of how and when it should be done. They are often systematic and detailed in their planning when managing a project, ensuring that the end product is delivered exactly as intended.\n\nESTJs have a tendency to stick to the old ways of doing things and may not see the need for change. They have a tendency to rely on their past experiences and may be hesitant to take risks in the future. For ESTJ leaders, vision might be a struggle because they are often better at implementing changes than conceiving of them.\n\nESTJs have a strong belief in authority systems and prefer to construct a clear hierarchy. They are comfortable following commands from superiors and want their subordinates to do the same. They are usually firm in their decisions and show little flexibility once they have reached a conclusion.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
