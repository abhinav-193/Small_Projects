import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class CareerINFP extends StatelessWidget {
  const CareerINFP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'TThe INFP at Work',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "The INFP isn't motivated by money or status at work; instead, they prefer work that coincides with their inner values and allows them to serve others. INFPs are motivated by vision and inspiration, and the desire to participate in initiatives and causes that are meaningful to them.\n\nINFPs love the creative problem-solving process and seek to comprehend complex challenges. They value creativity and seek to come up with unique solutions to better people's lives. A profession that allows healers to exhibit their personality in the way they operate and use their ability to see unique solutions is great.\n\nINFPs appreciate working independently and having complete control over how and when a job is completed. They frequently love working in groups, but they prefer to be able to put their own unique imprint on their work. When working with others, the INFP values cooperation, support, and flexibility, as well as a shared love for their beliefs.",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the INFP',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INFPs that are caring and creative are drawn to occupations that allow them to exhibit their unique personalities and ideals. Many INFPs work in fields that allow them to use their compassion and empathy to benefit others. INFPs usually pick creative and artistic careers that allow them to think freely and be their authentic selves.\n\nINFPs excel in the following fields:\n\nFine Artist\nFashion Designer\nGraphic Designer\nMultimedia Artist or Animator",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'Top Careers for the INFP',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INFPs that are caring and creative are drawn to occupations that allow them to exhibit their unique personalities and ideals. Many INFPs work in fields that allow them to use their compassion and empathy to benefit others. INFPs usually pick creative and artistic careers that allow them to think freely and be their authentic selves.\n\nINFPs excel in the following fields:\n\nFine Artist\nFashion Designer\nGraphic Designer\nMultimedia Artist or Animator",size: 18,),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Psychologist\n"
                    "Sociologist\n"
                    "Chiropractor\n"
                    "Nutritionist\n"
                    "Mental Health Counselor\n"
                    "School or Career Counselor\n"
                    "Community Service Manager\n"
                    "Social Worker\n"
                    "Fundraiser\n"
                    "Human Resources Specialist\n"
                    "Training or Development Manager\n"
                    "Archivist or Curator\n"
                    "Elementary School Teacher\n"
                    "Librarian\n"
                    "Preschool Teacher\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'INFP Careers to Avoid\n',size: 25,)),
              Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(heading: "Anthropologist\n"
                    "Electrician\n"
                    "Military Officer\n"
                    "Systems Analyst\n"
                    "Sales Manager\n"
                    "Auditor\n"
                    "Cost Estimator\n"
                    "Engineering Technician\n"
                    "Chemical Engineer\n"
                    "Dentist\n"
                    "Judge\n",size: 18,),
              ),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INFP on a Team\n',size: 25,)),
              HeadingText(heading: "INFPs are creative and supportive team members who contribute by understanding their teammates' beliefs and working to bring the group's objective together. They are good at listening to a variety of viewpoints and coming up with unique solutions that encompass everyone's views and priorities. They are creative and adaptable thinkers who are open to practically any possibility as long as it aligns with their principles.\n\n",size: 18,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INFP as a Leader\n',size: 25,)),
              HeadingText(heading: "INFPs inspire people with encouragement and a positive vision when they are in positions of leadership. They are genuinely idealistic, and they bring a calm resolve to their leadership role while working for a cause that is vital to them. They are skilled at seeing potential in others and inspiring them to use their abilities.\n\nINFPs are nurturing, innovative leaders who push their staff to think outside the box. They may avoid conflict and put off making difficult decisions due to their adaptable nature and great desire for harmony. They excel at leading collaborative teams of like-minded individuals that share their goals.\n\n",size: 18,),


            ],
          ),
        ),
      ),
    );
  }
}
