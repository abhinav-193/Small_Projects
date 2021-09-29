import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerENTP extends StatelessWidget {
  const CareerENTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENTP at Work\n',size: 25,)),
              HeadingText(heading: "At work, the ENTP is concerned with finding creative solutions to difficult challenges in order to improve system efficiency and effectiveness. ENTPs frequently adopt an entrepreneurial approach to their work, preferring to tackle things in a relaxed and unstructured manner, with minimal constraints on their creativity.\n\nENTPs value competence and frequently desire to be the expert. They like employment that requires them to constantly enhance their knowledge and skills. They love power and desire a career that allows them to interact with influential individuals while also increasing their own influence.\n\nENTPs are creative thinkers that despise regularity. When they are asked to repeat a task or pay attention to details, they become bored quickly. They thrive in work that is very conceptual and allows them to solve difficulties creatively rather than thinking through the technicalities.\n\nAn ENTP's ideal workplace is one that is intellectually stimulating but not rigid, with innovative and bright coworkers. An ENTP's ideal job allows them to use their creativity to develop novel ideas while delegating responsibility for the time-consuming intricacies of implementation to others.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ENTP\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Financial Analyst\n"
                    "Management Consultant\n"
                    "Management Consultant\n"
                    "Advertising Manager\n"
                    "Environmental Engineer\n"
                    "Landscape Architect\n"
                    "Mechanical Engineer\n"
                    "Software Developer\n"
                    "Economist\n"
                    "Epidemiologist\n"
                    "Psychologist\n"
                    "Sociologist\n"
                    "Survey Researcher\n"
                    "Financial Analyst\n"
                    "Management Consultant\n"
                    "Market Research Analyst\n"
                    "Advertising Manager\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ENTP Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ENTP's inherent talents and preferred work style, whereas others require patterns of thinking and behaviour that are not as natural to the ENTP. Occupations that require the ENTP to work outside of their natural preferences can be stressful or tiring, and thus are generally unsuitable to ENTPs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Medical Records Technician\n"
                    "Family Physician\n"
                    "Medical Assistant\n"
                    "Dietitian\n"
                    "Recreation Worker\n"
                    "Receptionist\n"
                    "Factory Supervisor\n"
                    "Machinist\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENTP on a Team\n',size: 25,)),
              HeadingText(heading: "ENTPs are brilliant, enterprising team members who are eager to try out new and innovative ideas. The ENTP is a flexible and adaptable personality who is always looking for the best way to accomplish things and is ecstatic when given the chance to create. ENTPs are active and upbeat people who are confident in their capacity to solve difficulties. They frequently believe that the best answers come from skirting or even breaking the laws, and they have little interest in following the rules. They could have a lot of disagreements with teammates who adopt a more traditional approach.\n\nENTPs are often open-minded people who enjoy hearing a variety of viewpoints on a topic. They excel at synthesising information and frequently demonstrate a gift for combining the best aspects of multiple concepts into a single, cohesive thought. They can, however, be competitive and like taking credit for a team's accomplishments. They are rarely adept at ironing out specifics, thus they may prefer to take charge of the group's overarching direction while delegating the details to their teammates.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENTP as a Leader\n',size: 25,)),
              HeadingText(heading: "ENTPs excel in leadership roles because they are creative and entrepreneurial. Leaders that are ENTPs are intellectually competitive and seek a staff that can keep up with them. They are inclined to encourage freedom and creative thinking in their reports, but will thoroughly and critically examine any new ideas, including their own.\n\nIn their hunt for patterns and principles, ENTPs seek out trends and desire access to a wealth of data and information. They are more concerned with systems than with people, and in their pursuit of information, understanding, and creativity, they may overlook their team's emotional needs. When they do focus on personal problems, their strength is strategy rather than diplomacy, and they frequently construct and control social systems using their understanding of human behaviour.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
