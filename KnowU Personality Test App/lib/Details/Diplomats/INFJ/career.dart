import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerINFJ extends StatelessWidget {
  const CareerINFJ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'TThe INFJ at Work',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "The INFJ is dedicated to improving the human condition at work. INFJs are hardworking, helpful, and principled individuals who can be counted on to develop, plan, and execute difficult humanitarian endeavors. Despite their lofty objectives, counselors find the most fulfillment in their profession when they are able to transform their thoughts into reality, resulting in positive change for others.\n\nINFJs are usually well-organized, and they seek jobs that allow them to finish projects in a systematic manner. They are usually self-sufficient and like a calm setting in which they may completely develop their own views and ideas\n\nAn INFJ's ideal work environment is one that is peaceful, productive, and focused on a humanitarian goal, with coworkers who share their commitment to good change. A Counselor's ideal employment allows them to express themselves creatively in a self-contained, well-organized atmosphere while developing and implementing a vision that is in line with their personal values",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the INFJ',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "The opportunity to do something that is compatible with their values is the most important factor for INFJs when it comes to picking a vocation. INFJs frequently pursue occupations in fields that aid others, such as health care, teaching, or counseling. INFJs are natural thinkers who value jobs that allow them to apply their intelligence to challenges that interest them. INFJs can be found in a variety of fields, including psychology, but they can also be found in other disciplines and even engineering.\n\nThe top INFJ career trends show that many INFJs have a creative streak. Working with words is particularly appealing to INFJs, although they can also be found in a variety of artistic professions.",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the INFJ',size: 25,)),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Physical Therapist\n"
                    "Public Health Educator\n"
                    "Psychiatrist\n"
                    "Massage Therapist\n"
                    "Nutritionist\n"
                    "Medical Researcher\n"
                    "Clinical Psychologist\n"
                    "Counselor\n"
                    "Social Worker\n"
                    "Speech Pathologist\n"
                    "Clergy\n"
                    "Social Scientist\n"
                    "Genealogist\n"
                    "Food Scientist\n"
                    "Environmental Scientist\n"
                    "HR Manager\n"
                    "Corporate Trainer\n"
                    "Environmental Attorney\n"
                    "Legal Mediator\n"
                    "Elementary Teacher\n"
                    "Special Education Teacher\n"
                    "Librarian\n"
                    "Translator\n"
                    "Editor\n"
                    "Technical Writer\n"
                    "Graphic Designer\n"
                    "Animator\n"
                    "Interior Designer",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'INFJ Careers to Avoid\n',size: 25,)),
              HeadingText(heading: "It's crucial to remember that any personality type can succeed in any field. Some vocations, on the other hand, are well suited to the INFJ's innate talents and preferred work style, whereas others require patterns of thinking and behavior that are not as natural to this personality type. Careers that require the INFJ to function outside of their natural preferences can be demanding or draining, and they often sound unappealing to Counselors considering a career change.\n\nBased on data acquired from general population surveys, the following vocations have been determined to be unpopular among INFJs.\n\n",size: 18,),

              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "General Contractor\n"
                    "Electrician\n"
                    "Mechanic\n"
                    "Surveyor\n"
                    "Real Estate Broker\n"
                    "Sales Manager\n"
                    "Financial Manager\n"
                    "Factory Supervisor\n"
                    "Military Officer\n"
                    "Firefighter\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INFJ on a Team\n',size: 25,)),
              HeadingText(heading: "INFJs tackle human problems creatively and provide novel ideas to promote human potential. They are often sensitive to the skills of others and encourage teammates to contribute their skills. They are aware of the group process, listen to others, and synthesize different objectives to develop a single vision. they are aware of each other. Since they want to take all views into account, counselors may have difficulties with, particularly competitive or conflicting teams.\n\nThe INFJ functions in a team as a source of silent inspiration and vision, providing the group with clarity.INFJs look for significance and truth and dwell on concepts to deepen their comprehension. Whilst they don't draw attention to themselves often, they can provide a better understanding of and often communicate the objective of the group effectively. Counselors operate best in a supportive team to consider and work with integrity ethics and values. The INFJ can be alienated by teams that respond fast without taking time to reflect.",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INFJ as a Leader\n',size: 25,)),
              HeadingText(heading: "INFJs motivate others to share a positive vision in leading roles. The leaders of counselors are generally silent and inconspicuous, but gain the commitment of others with their effort, strong ideals, and creative ideas. They are excellent to lead a team to a common vision and setting organizational objectives that help people. They are analytical and creative and have a sense of trust and engagement in projects they trust. As the leaders of INFJ are generally motivated by personal values, they are best suited by organizations. They have the task of maintaining realistic ideas and initiatives.",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
