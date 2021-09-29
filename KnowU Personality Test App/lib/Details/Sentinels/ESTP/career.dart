import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerESTP extends StatelessWidget {
  const CareerESTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESTP at Work\n',size: 25,)),
              HeadingText(heading: "The ESTP is driven to answer logical difficulties in the present time at work. ESTPs have a good knowledge of the situation's concrete reality as well as the resources at their disposal. They are often able to envision a way out of difficult situations because they understand the reality of the present.\n\nThe ESTP chooses the optimum approach for the situation based on previous experience. ESTPs are practical and hands-on, with a kinetic understanding of how things work. Although ESTPs have difficulty visualising abstract concepts, they are adaptable in their approach and are usually prepared to give anything a try if it seems sensible.\n\nESTPs frequently pursue occupations that allow them to use their athleticism, mechanical talents, or ability to navigate their physical surroundings. They prefer objects to concepts and are frequently drawn to a real product. They may have difficulty sitting still and prefer to avoid being confined to a desk.\n\nESTPs prefer jobs that are a little unpredictable and provide them with some excitement and adventure during the workday. They want a career that gives them the freedom to address problems as they arise, without having to adhere to rigid procedures or plans.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ESTP\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "General Contractor\n"
                    "Building Inspector\n"
                    "Surveyor\n"
                    "Mechanic\n"
                    "Forester\n"
                    "Carpenter\n"
                    "Land Developer\n"
                    "Landscape Architect\n"
                    "Farmer or Rancher\n"
                    "Exercise Physiologist\n"
                    "Fitness Instructor\n"
                    "Respiratory Therapist\n"
                    "Radiology Technician\n"
                    "Real Estate Broker\n"
                    "Sales Engineer\n"
                    "Stockbroker\n"
                    "Sales Manager\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ESTP Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ESTP's inherent talents and preferred work style, whereas others require modes of thinking and behaviour that are not as natural to the ESTP. Occupations that require the ESTP to work outside of their natural preferences can be stressful or tiring, and thus are generally unappealing to ESTPs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Writer\n"
                    "Librarian\n"
                    "Curator\n"
                    "Craft Artist\n"
                    "Animator\n"
                    "Clergy\n"
                    "Physician Assistant\n"
                    "Medical Assistant\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESTP on a Team\n',size: 25,)),
              HeadingText(heading: "ESTPs are active participants who like recognising resources and progressing through difficulties in a dynamic manner to develop practical answers. They're typically excellent in a crisis, when their adaptability and action orientation distinguish them from the herd. They may serve as a voice of reason, urging the group to use available resources to take immediate action.\n\nESTPs want to keep team interactions lighthearted and relaxed, and may clash with team members who are extremely serious or insist on doing things a certain way. ESTPs tend to keep things open-ended and flexible, thus colleagues who wish to commit to a plan may face opposition from the ESTP, particularly if the ESTP does not perceive immediate, clear benefits to the planned action. They thrive when they are free to tackle problems in their own practical, no-nonsense style, without having to adhere to a rigid set of rules or structure.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ESTP as a Leader\n',size: 25,)),
              HeadingText(heading: "ESTPs are quick to assume command, particularly in a crisis. They are vivacious and charismatic, and they can readily read others to adjust their approach and persuade the group to their point of view. ESTPs are blunt and assertive, and they freely express their opinions without regard for office politics or personal reactions.\n\nESTP executives value efficiency and rely on what has worked in the past. They may struggle with long-term planning; they may find it difficult to visualise the future and prefer to deal with difficulties as they happen. They want to see things happen, and they'll work hard with their employees to get things done quickly.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
