import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerISFJ extends StatelessWidget {
  const CareerISFJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISFJ at Work\n',size: 25,)),
              HeadingText(heading: "The ISFJ is driven at work by a desire to assist others in a practical, orderly manner. ISFJs are motivated by their basic beliefs, which generally involve respecting tradition, caring for others, and putting in long hours.\n\nISFJs prefer work that demands meticulous attention to detail and strict adherence to established procedures, and they prefer to complete things quickly and efficiently. They like a defined hierarchy of power and expectations.\n\nISFJs prefer to work in the background and prefer to be recognized in a low-key manner rather than having to present their work in front of others. They want to feel like they've done their job, but they don't want to be in the spotlight.\n\nIdeal employment for an ISFJ consists of well-defined work duties that result in a concrete or observable result and does not need a lot of multitasking. An ideal work environment for an ISFJ is one that is well-organized, offers lots of solitude, and contains coworkers who share the same values as the ISFJ.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ISFJ\n',size: 25,)),
              HeadingText(heading: "ISFJs are first and foremost thinkers, which is shown in their work choices. ISFJs can work in a variety of industries, but a happy and fulfilled ISFJ is always in a job that allows them to apply their intellect, analyze concepts, and think deeply.\n\nISFJs are drawn to cutting-edge fields such as technology, engineering, and the sciences because of their inventive nature. Although ISFJs are an uncommon breed in general, a visit to California's Silicon Valley or a tech corporation like Google or Apple will reveal that practically everyone else is an ISFJ. This personality type thrives in the fast-paced, unpredictable realm of technology.",size: 18,),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Probation Officer or Correctional Treatment Specialist\n"
                    "Social or Human Service Assistant\n"
                    "Social Worker\n"
                    "Agricultural or Food Science Technician\n"
                    "Agricultural or Food Scientist\n"
                    "Biological Technician\n"
                    "Environmental Science and Protection Technician\n"
                    "Environmental Scientist or Specialist\n"
                    "Forensic Science Technician\n"
                    "Forest or Conservation Technician\n"
                    "Athletic Trainers or Exercise Physiologist\n"
                    "Dental Assistant\n"
                    "Dental Hygienist\n"
                    "Dentist\n"
                    "Biomedical Engineer\n"
                    "Electrical or Electronic Engineering Technician\n"
                    "Environmental Engineer\n"
                    "Environmental Engineering Technician\n"
                    "Health and Safety Engineer\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ISFJ Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ISFJ's inherent talents and preferred work style, whereas others require modes of thinking and behavior that are not as natural to the ISFJ. Occupations that require the ISFJ to function outside of their natural preferences can be stressful or tiring and thus are generally unappealing to ISFJs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Executive\n"
                    "Sales Manager\n"
                    "Art Director\n"
                    "Copywriter\n"
                    "Actor\n"
                    "Restaurant Manager\n"
                    "Military\n"
                    "Attorney\n"
                    "Economist\n"
                    "Market Researcher\n"
                    "Social Scientist\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISFJ on a Team\n',size: 25,)),
              HeadingText(heading: "ISFJs are caring, organized team players who pay attention to the needs of those around them and follow procedures to complete tasks. ISFJs aren't usually interested in leading a group, but they might naturally take on the job of group secretary, taking detailed notes and perfectly recalling information and details that are crucial to the group's process.\n\nISFJs are sensitive to others' worries and feelings, and they work best in cooperative teams with little conflict. ISFJs are most at ease on a team where everyone follows the same set of rules and procedures; they believe that when everyone follows the rules, everyone gets along better. Team members who challenge the rules—or worse, disregard them entirely—may irritate the ISFJ, who prefers a peaceful, predictable workplace.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ISFJ as a Leader\n',size: 25,)),
              HeadingText(heading: "When it comes to leadership, ISFJs are known for being traditional, helpful, and realistic. They are focused on what can be done in a realistic and responsible manner to assist others. ISFJs are frequently hesitant to take on leadership roles, yet they are dedicated to executing their job and will step up if necessary.\n\nISFJs are devoted to their companies and diligently follow set protocols. They place a heavy emphasis on authority and hierarchy, and they want their teams to do the same. Because they prefer to operate behind the scenes, they may be able to exert influence by cultivating close relationships with others.",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
