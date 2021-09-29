import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerINTP extends StatelessWidget {
  const CareerINTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INTP at Work\n',size: 25,)),
              HeadingText(heading: "The INTP is driven to solve complicated challenges in a unique and new approach at work. Architects like finding imaginative solutions to very abstract problems by meticulously analyzing systems and ideas in order to have a thorough knowledge of them.\n\nINTPs are less interested in organizational traditions than they are in forging their own path to innovation. They despise being constrained by bureaucracy and rules, and they are often more concerned with the theoretical validity of their ideas than with their practical applicability. They usually prefer to concentrate on developing the concept and delegate the implementation details to someone else.\n\nINTPs operate best on their alone or with a limited group of coworkers they regard as intelligent, competent, and rational. They rapidly tire of pushy or forceful coworkers, and they might be disdainful of others who aren't as bright as they are.\n\nINTPs operate best on their alone or with a limited group of coworkers they regard as intelligent, competent, and rational. They rapidly tire of pushy or forceful coworkers, and they might be disdainful of others who aren't as bright as they are.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the INTP\n',size: 25,)),
              HeadingText(heading: "INTPs are first and foremost thinkers, which is shown in their work choices. INTPs can work in a variety of industries, but a happy and fulfilled INTP is always in a job that allows them to apply their intellect, analyze concepts, and think deeply.\n\nINTPs are drawn to cutting-edge fields such as technology, engineering, and the sciences because of their inventive nature. Although INTPs are an uncommon breed in general, a visit to California's Silicon Valley or a tech corporation like Google or Apple will reveal that practically everyone else is an INTP. This personality type thrives in the fast-paced, unpredictable realm of technology.",size: 18,),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Computer Network Architect\n"
                    "Computer or Information Research Scientist\n"
                    "Computer Systems Analyst\n"
                    "Software Developer\n"
                    "Aerospace Engineer\n"
                    "Chemical Engineer\n"
                    "Computer Hardware Engineer\n"
                    "Environmental Engineer\n"
                    "Landscape Architect\n"
                    "Mechanical Engineer\n"
                    "Anthropologist or Archaeologist\n"
                    "Environmental Scientist\n"
                    "Medical Scientist\n"
                    "Physicist or Astronomer\n"
                    "Psychologist\n"
                    "Physician or Surgeon\n"
                    "Computer Programmer\n"
                    "Sales Engineer\n"
                    "Top Executive\n"
                    "Mathematician\n"
                    "Market Research Analyst\n"
                    "Financial Analyst\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'INTP Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the INTP's innate talents and preferred work style, whereas others require patterns of thinking and behavior that are not as natural to this personality type. Careers that require the INTP to function outside of their natural preferences can be demanding or draining, and they often sound unappealing to Counselors considering a career change.\n\nBased on data acquired from general population surveys, the following vocations have been determined to be unpopular among INTPs.\n\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Licensed Practical Nurse\n"
                    "Dietitian\n"
                    "Elementary Teacher\n"
                    "Cosmetologist\n"
                    "Retail Salesperson\n"
                    "Restaurant Manager\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INTP on a Team\n',size: 25,)),
              HeadingText(heading: "INTPs are analytical, thoughtful team members who bring a profound understanding of complicated challenges to the table. They are frequently particularly interested in the theoretical concerns that underpin the team's purpose, and they can assist the group in identifying fundamental principles and coming up with new ideas. They are more likely to interact with the team's vision, examining it sensibly and objectively and proposing alternatives and possibilities.\n\nINTPs work best in groups when they are given the flexibility to think creatively about logical challenges. They are good at coming up with new ideas, but they aren't big on following the rules. Members of the team who are devoted to tradition may clash with the INTP. Architects are usually self-contained thinkers who would prefer to argue concepts than engage in polite talk. If too much time is spent on niceties, they may get impatient, and team members who want a more personal touch may be turned off.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INTP as a Leader\n',size: 25,)),
              HeadingText(heading: "INTPs inspire others with their intelligence and new ideas when they are in positions of leadership. On the surface, INTP leaders appear unassuming, but once they start talking about their ideas, they grab everyone's attention. They prefer to set the overarching aim and trust their team to address difficulties on their own, therefore they give their reports a lot of leeways\n\nINTPs enjoy exploring new possibilities and solving problems creatively, but they may become so engrossed in their thoughts that they forget to lead their teams into action. They may have difficulty hammering out details and frequently entrust the creation of exact requirements to someone else. They excel at leading capable, intelligent people.",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
