import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerENFJ extends StatelessWidget {
  const CareerENFJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENFJ at Work\n',size: 25,)),
              HeadingText(heading: "The ENFJ is driven to organize others in order to bring about positive change at work. ENFJs enjoy solving problems, especially when they can utilize their excellent intuition about people to help them.\n\nENFJs prefer to work in a pleasant setting where they can assist and promote others' development. They frequently take on the position of mentor, with the primary goal of assisting others in becoming better at what they do.\n\nENFJs are drawn to leadership positions because they naturally organize individuals to make the most of their special abilities. They frequently have a strong vision for their profession and love being able to use their imagination to design unique humanitarian activities. ENFJs value collaboration and seek access to the resources needed to put their ideas into reality.\n\nAn ENFJ's ideal workplace is forward-thinking and people-focused, with a clear humanitarian objective and a focus on positive action. An ENFJ's ideal employment allows them to develop and implement ideas that improve other people's lives and well-being.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ENFJ\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Health Educator\n"
                    "Rehabilitation Counselor\n"
                    "School or Career Counselor\n"
                    "Social or Community Service Manager\n"
                    "Editor\n"
                    "Photographer\n"
                    "Public Relations Specialist\n"
                    "Reporter\n"
                    "Author\n"
                    "Instructional Coordinator\n"
                    "College Instructor\n"
                    "Special Education Teacher\n"
                    "College Administrator\n"
                    "Childcare Center Director\n"
                    "Advertising and Promotions Manager\n"
                    "Real Estate Broker\n"
                    "Lodging Manager\n"
                        "Market Research Analyst",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ENFJ Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ENFJ's innate talents and preferred work style, whereas others require modes of thinking and behavior that are not as natural to the ENFJ. Occupations that require the ENFJ to work outside of their natural preferences can be stressful or tiring, and therefore are generally unfavorable to ENFJs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Factory Supervisor\n"
                    "Systems Analyst\n"
                    "Medical Records Technician\n"
                    "Auditor\n"
                    "Pathologist\n"
                    "Military\n"
                    "Computer Programmer\n"
                    "Engineering Technician\n"
                    "Chemical Engineer\n"
                    "Electrical Engineer\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENFJ on a Team\n',size: 25,)),
              HeadingText(heading: "ENFJs are creative, collaborative team members that want to work together to make things happen. ENFJ team members generate agreement by relying on supportive connections as a basis. They are adept at understanding the needs and priorities of others. ENFJs are naturally enthusiastic and like to involve their coworkers in their plans.\n\nENFJs might be useless on teams in dispute because they are so focused on cooperation; they may become so preoccupied with attempting to achieve a harmony that they forget to make an objective assessment. They are more people-focused than task-focused and will emphasize the growth and development of others throughout the process, despite having a strong sense of purpose. ENFJs need to refocus on the task at hand from time to time, as they can spend so much time mentoring and encouraging others that they lose sight of the team's main aim.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENFJ as a Leader\n',size: 25,)),
              HeadingText(heading: "ENFJs are passionate, supportive, and action-oriented in leadership roles. They are powerful leaders with clear visions for how to enhance companies so that they may better serve people's needs. ENFJs are self-assured in their mission, but they frequently balance their goal orientation with an emphasis on interpersonal processes. They desire collaboration and want others to join them in both action and spirit. ENFJs frequently take on the role of mentor; they like assisting their employees in their professional and personal development.\n\nAlthough ENFJs prefer being in charge, they can feel discouraged in situations where there is a constant dispute. They have a strong desire to be acknowledged, and in jobs where they are unable to elicit support for their views and ideals, they might become depleted and useless.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
