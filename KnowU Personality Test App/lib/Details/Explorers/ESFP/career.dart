import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerESFP extends StatelessWidget {
  const CareerESFP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESFP at Work\n',size: 25,)),
              HeadingText(heading: "The ESFP prefers to be hands-on and in the thick of things at work. ESFPs appreciate an active, social work atmosphere where they can be spontaneous and have fun with friendly, laid-back, and energetic coworkers.\n\nESFPs are pragmatic, practical, and aware of others' needs. They frequently choose a career that allows them to help others and where they can see immediate, measurable outcomes for their efforts. They have a knack for addressing practical, people-centered problems, and they can use this aptitude to help others.\n\nESFPs are very sensitive to their surroundings and frequently have a creative drive. They may choose occupations in food, textiles, art, or music that appeal to their sensory side. ESFPs prefer a job that allows them to roam around and a work environment that is attractive to the eye.\n\nAt work, ESFPs are pressured by rigid rules or excessive bureaucracy, and they prefer the freedom to deal with circumstances as they arise. They are usually focused on the immediate needs of the time and dislike working on long-term initiatives, preferring labour that produces instant and tangible results\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ESFP\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Elementary Teacher\n"
                    "Recreation Worker\n"
                    "Social Worker\n"
                    "Special Education Teacher\n"
                    "Nurse\n"
                    "Physical Therapist\n"
                    "Occupational Therapist\n"
                    "Veterinary Assistant\n"
                    "Fitness Trainer\n"
                    "Fashion Designer\n"
                    "Pediatrician\n"
                    "Dietitian\n"
                    "Landscape Architect\n"
                    "Chef\n"
                    "Florist\n"
                    "Gardener\n"
                    "Musician\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ESFP Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ESFP's innate talents and preferred work style, whereas others require modes of thinking and behaviour that are not as natural to the ESFP. Occupations that require the ESFP to work outside of their natural preferences can be stressful or tiring, and thus are generally unappealing to ESFPs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Systems Analyst\n"
                    "Tech Support Specialist\n"
                    "Airline Pilot\n"
                    "Dietitian\n"
                    "Recreation Worker\n"
                    "Biomedical Engineer\n"
                    "School Administrator\n"
                    "English Teacher\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESFP on a Team\n',size: 25,)),
              HeadingText(heading: "ESFPs are happy-go-lucky team members who add a sense of humour to the mix. ESFPs simply enjoy interacting with others and see collaboration as an opportunity to do so in a fun manner. They may not appear to their teammates to be particularly motivated or task-oriented, but they keep an eye out for others' needs and provide practical, down-to-earth aid and support.\n\nWhen ESFPs can work on urgent, practical problems without needing to be overly serious about the topic at hand, they are at their best. They excel at promoting collaboration, and they frequently possess the ability to listen to various points of view on a team with an open mind. They are typically aware of the skills that others can bring to a team and, through their enthralling passion, can push others to participate. On competitive rather than cooperative teams, ESFPs may be less effective. They may have conflicts with coworkers who are very task-oriented and don't allow time for enjoyment.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESFP as a Leader\n',size: 25,)),
              HeadingText(heading: "ESFPs are realistic, encouraging, and passionate in leadership roles. Their power comes in their capacity to energise and encourage a group to achieve short-term objectives and deal with emergencies. ESFP leaders are acutely aware of other people's moods and behaviours, and they frequently use this perceptive ability to connect with their employees and offer them with the resources they require to succeed.\n\nESFPs are effective at bringing people together and rallying support, but they would rather maintain a favourable image and have nice encounters than become engaged in disagreements. They may struggle with team strife and avoid making difficult decisions in favour of keeping things light and pleasant.\n\nESFPs like to handle problems in the moment and reject long-term planning. They are most effective when leading a helpful and cooperative team to achieve short-term, measurable outcomes.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
