import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerISTP extends StatelessWidget {
  const CareerISTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISTP at Work\n',size: 25,)),
              HeadingText(heading: "At work, the ISTP is driven by a desire to gain and use technical knowledge. ISTPs like mastering and managing their trade tools, whether they're traditional hammers and saws or more sophisticated commercial or technological instruments.\n\nISTPs love jobs that have a measurable outcome, and they are most happy when they have created something tangible. They appreciate troubleshooting and look for jobs that allow them to put their abilities to use in real-world situations.\n\nMany ISTPs choose jobs that require physical activity and often entail some risk or danger, as opposed to being confined to a desk. They are usually energized by action and prefer to get their hands dirty rather than spend time preparing or speculating.\n\nISTPs emphasize efficiency and logic in their work, as well as adaptability. They want work that allows them to be practical and action-oriented without being overburdened by rules, procedures, or bureaucracy.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ISTP\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Commercial Designer\n"
                    "Landscape Architect\n"
                    "Building Inspector\n"
                    "Exercise Physiologist\n"
                    "Athletic Trainer\n"
                    "Dental Hygienist\n"
                    "ER Physician\n"
                    "Financial Manager\n"
                    "Software Developer\n"
                    "Systems Analyst\n"
                    "Database Administrator\n"
                    "Software Tester\n"
                    "Office Manager\n"
                    "Economist\n"
                    "Financial Planner\n"
                    "Biologist\n"
                    "Geologist\n"
                        "Police Officer",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ISTP Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ISTP's inherent talents and preferred work style, whereas others require modes of thinking and behavior that are not as natural to the ISTP. Occupations that require the ISTP to function outside of their natural preferences can be stressful or tiring and thus are generally unappealing to ISTPs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Craft Artist\n"
                    "Reporter\n"
                    "Journalist\n"
                    "Actor\n"
                    "Market Researcher\n"
                    "Social Worker\n"
                    "Special Education Teacher\n"
                    "Social Service Director\n"
                    "Public Health Nurse\n"
                    "Dentist\n"
                    "Occupational Therapist\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISTP on a Team\n',size: 25,)),
              HeadingText(heading: "ISTPs are task-oriented, practical team members who are usually more concerned with the subject at hand than the people involved. They are smart, direct troubleshooters who look for opportunities to help with rapid action. ISTPs rarely demand the team's attention, preferring instead to watch and intervene when they recognize a chance to accomplish something.\n\nISTPs provide focused energy to a group and frequently take action where they identify a need. Their logical analysis frequently gets to the heart of a problem and helps others realize how to proceed. They don't have much patience for abstract discussions, and they may overlook the finer points of dealing with others. In fact, many ISTPs would rather do what needs to be done instead of spending time informing or involving others.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISTP as a Leader\n',size: 25,)),
              HeadingText(heading: "ISTPs are known for being flexible and hands-off in leadership roles, and they expect their subordinates to be the same. They love to lead teams on initiatives where visible results can be seen fast since they are practical and concrete in their approach. In a crisis, ISTPs are energized by situations that require urgent action and will leap into action to complete the task.\n\nISTPs have a strong action orientation, and their task comprehension is often kinetic rather than verbal. They often find it simpler to accomplish something oneself rather than explain it to someone else, which can make delegation difficult for ISTP leaders.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
