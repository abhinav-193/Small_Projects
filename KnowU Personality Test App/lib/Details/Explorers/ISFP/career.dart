import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerISFP extends StatelessWidget {
  const CareerISFP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISFP at Work\n',size: 25,)),
              HeadingText(heading: "ISFPs want to feel personally invested in their work, so they look for jobs that allow them to express themselves or contribute to a cause they care about. ISFPs are drawn to hands-on activities and are often elated when they can see a visible result of their efforts. Ideal employment for an ISFP allows them to see the results of their labor up close, in a setting that feels meaningful and aligned with their ideals.\n\nISFPs want a respectful, cooperative work atmosphere in which they can work quietly while receiving support when needed. Because ISFPs are so attuned to their physical surroundings, it's crucial for them to have a pleasant working environment.\n\nISFPs like to maintain a low profile and avoid positions that demand them to speak in front of large crowds or lead them. ISFPs expect their coworkers to be adaptable, supportive, and devoted to the team, even when they prefer to work alone.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ISFP\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Fashion Designer\n"
                    "Interior Designer\n"
                    "Cosmetologist\n"
                    "Artist\n"
                    "Jeweler\n"
                    "Graphic Designer\n"
                    "Dental Hygienist\n"
                    "Fitness Trainer\n"
                    "Optician\n"
                    "ER Physician\n"
                    "Pharmacist\n"
                    "Insurance Appraiser\n"
                    "Social Worker\n"
                    "Police Officer\n"
                    "Residential Counselor\n"
                    "Animal Trainer\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ISFP Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ISFP's inherent talents and preferred work style, whereas others require patterns of thinking and behavior that are not as natural to the ISFP. Occupations that require the ISFP to work outside of their natural preferences can be stressful or tiring and thus are generally unappealing to ISFPs looking for a job\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Executive\n"
                    "Sales Manager\n"
                    "Marketing Manager\n"
                    "Retail Salesperson\n"
                    "Auditor\n"
                    "School Administrator\n"
                    "Surgeon\n"
                    "Dentist\n"
                    "Psychiatrist\n"
                    "Health Care Administrator\n"
                    "Biologist\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISFP on a Team\n',size: 25,)),
              HeadingText(heading: "ISFPs are sensitive, helpful team members who seek out ways to make a direct, practical contribution. They like to help and support others, and they frequently take on the role of listener. The ISFP will look for methods to compromise and accommodate others because it is a cooperative organization. They frequently jump in when others require assistance, and they are frequently equipped with specific, pertinent data that might aid the team in comprehending the facts of the problem.\n\nISFPs thrive when they can collaborate with others in a supportive, action-oriented capacity. They thrive at coming up with novel solutions to challenges in order to address people's immediate needs. ISFPs are wary of theories and projections about the future, and they may become impatient with concepts that have no tangible benefit for people. ISFPs have a reputation for being reserved, and they may be hesitant to speak up for their own point of view on a team. They can be irritated by domineering or competitive team members, and they thrive in a compassionate, egalitarian environment where everyone's input is valued.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISFP as a Leader\n',size: 25,)),
              HeadingText(heading: "ISFPs in leadership roles are motivated by a personal mission and interested in assisting their teams in achieving realistic goals. Understanding the needs and concerns of the individuals they deal with, as well as reacting gracefully to changing circumstances, are their assets. ISFP leaders are practical and down-to-earth, adept at analyzing resources and determining the needs of the moment. They excel at establishing trust and leading by example, preferring to be supportive rather than authoritative or domineering.\n\nISFPs prefer not to be in a leadership position, but they may be persuaded to do so if the project is personally important to them. When they do lead, they are most effective when they are leading a small, cohesive team to produce practical and measurable results.",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
