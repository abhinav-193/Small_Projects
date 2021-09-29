import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerENFP extends StatelessWidget {
  const CareerENFP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENFP at Work\n',size: 25,)),
              HeadingText(heading: "At work, the ENFP is preoccupied with expressing themselves and benefiting others through their creativity. ENFPs are curious about the possibilities for themselves and others, and they approach their work with creativity and vision. They appreciate working on creative or people-related problems that require a unique, imaginative solution.\n\nENFPs are generally driven by their commitment to humanitarian causes and a desire to do something that reflects their ideals. They are very interested in assisting others in their personal development. They prefer occupations that allow them to explore personal development and artistic expression.\n\nENFPs despise monotony and like a variety of tasks and challenges. They prefer to be in charge of their own schedule and resent being burdened with unnecessary regulations or mundane details. They look for enjoyable, innovative work that allow them to be creative and interact with others in an unstructured, supportive manner.\n\nAn ENFP's ideal workplace is one that is relaxed and welcoming, with little limitations on creativity. An ENFP's ideal career allows them to follow their passions, satisfy their curiosity, and create solutions that benefit people in unique and new ways.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the ENFP\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading:
                    "Actor\n"
                    "Dancer or Choreographer\n"
                    "Musician or Singer\n"
                    "Producer or Director\n"
                    "Human Resources Specialist\n"
                    "Meeting or Convention Planner\n"
                    "Training or Development Specialist\n"
                    "Insurance Sales Agent\n"
                    "Real Estate Broker\n"
                    "Sales Manager\n"
                    "Travel Agent\n"
                    "Animal Trainer\n"
                    "Fitness Trainer or Instructor\n"
                    "Skincare Specialist\n"
                    "Flight Attendant\n"
                    "Conservation Scientist\n"
                    "Psychologist\n"
                        "Sociologist",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'ENFP Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the ENFP's inherent talents and preferred work style, whereas others require patterns of thinking and behaviour that are not as natural to the ENFP. Occupations that require the ENFP to work outside of their natural preferences can be stressful or tiring, and thus are generally unsuitable to ENFPs looking for a job.\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Bank Teller\n"
                    "Financial Manager\n"
                    "Flight Engineer\n"
                    "Judge\n"
                    "Dentist\n"
                    "Farmer\n"
                    "Police Officer\n"
                    "Factory Supervisor\n"
                    "Chemical Engineer\n"
                    "Systems Analyst\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENFP on a Team\n',size: 25,)),
              HeadingText(heading: "ENFPs are passionate, involved team members who are curious about new ideas. They enjoy interacting with people and hearing their thoughts, especially if they are creative. They are open-minded, yet they have a strong sense of values, and they look for the concepts and motives behind their teammates' ideas. ENFPs aren't interested in following rules, so they'll push their teammates to think outside the box to come up with a solution that's all their own. They want to inspire others to be innovative and create their own unique voice.\n\nENFPs are more concerned with connections and ideas than with tasks, and may clash with task-oriented colleagues. They enjoy the challenge of brainstorming project alternatives and options, and are sometimes hesitant to commit to a course of action and move forward. They are hesitant to take on details and are best suited to contribute to a team with their exceptional interpersonal abilities. They are enthusiastic about the group's objective and are generally adept at motivating and encouraging others to use their skills.\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The ENFP as a Leader\n',size: 25,)),
              HeadingText(heading: "ENFPs who are in positions of leadership exude energy and excitement for their ideas. Their leadership style is democratic and adaptable, with a focus on maximising human potential. They like assisting others in their development as employees and as people, and they give their subordinates lots of leeway to come up with creative and original ideas. ENFP leaders inspire others with their enthusiasm for their ideas and convictions, and they are frequently astute at assessing people issues.\n\nENFP leaders can sometimes overlook the difficulties of implementation because they are so focused on their objectives. They are more concerned with people than with processes, and as they investigate relationships and human growth, they may lose sight of the final goal. To make their innovative ideas a reality, they may need to improve their planning and organisational skills.\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
