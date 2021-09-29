import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerISTJ extends StatelessWidget {
  const CareerISTJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISTJ at Work\n',size: 25,)),
              HeadingText(heading: "ISTJs are dependable and diligent in work. ISTJs are very conscientious about deadlines and specifications, and they work independently and methodically to finish the tasks they are given. ISTJs value a predictable work environment with few shocks and clear expectations. They are at their finest when they can build specific action plans and stick to them closely.\n\nAlthough ISTJs prefer to accomplish a lot of their work on their own, they often recognize the importance of working as part of a team, especially if their coworkers are sensible and businesslike, and there is a clear hierarchy so they know who is in charge.\n\nAn ISTJ's ideal employment allows them to tackle logical difficulties in a systematic manner. An ideal work environment for an ISTJ is one that is calm, organised, and structured, with well-defined rules and regulations that are followed by everybody.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ISTJ\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Advertising and Promotions Manager\n"
                    "Architectural or Engineering Manager\n"
                    "Compensation or Benefits Manager\n"
                    "Property, Real Estate, or Community Association Manager\n"
                    "Top Executive\n"
                    "Agricultural or Food Scientist\n"
                    "Chemical Technician\n"
                    "Environmental Science and Protection Technician\n"
                    "Forensic Science Technician\n"
                    "Natural Sciences Manager\n"
                    "Nuclear Technician\n"
                    "Career or Technical Education Teacher\n"
                    "Library Technician or Assistant\n"
                    "Postsecondary Education Administrator\n"
                    "Real Estate Broker or Sales Agent\n"
                    "Sales Engineer\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ISTJ Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ISTJ's innate talents and preferred work style, whereas others require modes of thinking and behavior that are not as natural to the ISTJ. Occupations that require the ISTJ to work outside of their natural preferences can be stressful or tiring and thus are generally unappealing to ISTJs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Graphic Designer\n"
                    "Actor\n"
                    "Photographer\n"
                    "Journalist\n"
                    "Musician\n"
                    "Recreation Worker\n"
                    "Retail Salesperson\n"
                    "Public Relations Specialist\n"
                    "Receptionist\n"
                    "Cosmetologist\n"
                    "Dental Hygienist\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISTJ on a Team\n',size: 25,)),
              HeadingText(heading: "ISTJs are team players who are dependable and goal-oriented. They tend to define goals in explicit, tangible terms and seek established benchmarks against which to assess the team's performance. ISTJs enjoy a disciplined team atmosphere with clear rules and defined responsibilities for everyone. They operate in a systematic and precise manner, ensuring that all details are correct and the team's product fulfills expectations.\n\nISTJs are task-oriented and prefer not to waste time arguing processes; instead, they prefer to get on with it. Similarly, the ISTJ will become irritated if there is too much abstract discussion of concepts without a clear action plan. ISTJs take a businesslike approach to life and have limited patience for team members who want to talk about their feelings or relationships. They believe that discussing personal matters in the workplace is unprofessional and hinders the team's efficiency.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISTJ as a Leader\n',size: 25,)),
              HeadingText(heading: "ISTJs are explicit about expectations and processes as leaders. They are realistic and action-oriented, and they lead their teams to achieve specific goals within specific time constraints. Because of their inherent tendency to systematise systems and achieve measurable results, ISTJs are often drawn to leadership positions.\n\nISTJs prefer not to improvise and prefer to lead in their own areas of knowledge, with personnel who have shown competence in the sector. They prefer to operate within set parameters and may find it difficult to innovate or take on initiatives with unclear standards or objectives.\n\nISTJs aren't known for their political skills, and in their need to manage the process and achieve team goals, they may ignore minor details. They usually inspire their teams by exhibiting a strong work ethic, and they are reluctant to form personal ties or lavish praise.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
