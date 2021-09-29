import 'package:flutter/material.dart';
import 'package:project_open_jung/components/text_widgets/heading_text.dart';

class OverviewINFP extends StatelessWidget {
  const OverviewINFP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'The INFP Personality Type',size: 25,)),
              SizedBox(height: 20,),
              HeadingText(heading: 'INFPs are creative idealists who follow their own values and convictions. Possibilities are vital to a Healer, and the actuality of the situation is merely a fleeting concern. They see the possibility of a brighter future and seek truth and meaning in their own unique way.',size: 18,),
              SizedBox(height: 10,),
              HeadingText(heading: "INFPs are sensitive, loving, and empathetic people who care greatly about their own and others' personal development. INFPs are nonjudgmental and individualistic, believing that each person must forge their own path. They like spending time delving into their own thoughts and principles, and they gently encourage others to do so as well. INFPs are artistic and creative, and they enjoy discovering new ways to express themselves.",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'What does INFP stand for?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "The INFP code is made up of four letters, each of which represents a key personality feature of this personality type. INFPs prefer to be spontaneous and flexible rather than planned and organized (introverted), focus on ideas and concepts rather than facts and specifics (iNtuitive), make decisions based on feelings and values (Feeling), and prefer to be spontaneous and flexible rather than planned and organized (Perceiving).",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'INFP Values and Motivations',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INFPs embrace authenticity and strive to be unique in whatever they do. They are frequently preoccupied with finding significance and truth within themselves. The INFP is uninterested in the following tradition; instead, they prefer to explore their own values and ideas and decide for themselves what is correct. INFPs are generally unorthodox and odd, yet they have no urge to comply. Rather than trying to blend in with the crowd, INFP prefers to be authentic to themselves.\n\nINFPs handle people with acceptance and nonjudgment, believing that each person must find their own path. They are adaptable and accommodating, and they can see a variety of perspectives. Supporting others is crucial to the INFP; but, if their own values are being infringed, the INFP may respond angrily. They despise being bullied by people who believe there is only one right way to accomplish things. INFPs desire a free and open exchange of ideas.",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How do Others see the INFP?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INFPs may appear chilly at first because they keep their most genuine thoughts and feelings for close friends and family. They are often spiritual and thoughtful, and they like serious discussions about values, ethics, people, and personal growth. The Healer is a naturally curious and open-minded person who is always looking for new ways to learn more about themselves and the people around them. Few people realize the depth of the INFP's dedication to their views because they are passionate about their values but also reserved.\n\nINFPs are sensitive and empathic people who seek significance and authenticity throughout their lives. This kind is less interested in the daily parts of life, and they are more attracted by novel concepts than by practical facts. They usually accept others without question, and they may be particularly interested in unusual viewpoints or alternative lifestyles. They frequently have a specific fondness for the arts, particularly the avant-garde, because they like discovering new ways to express themselves.",size: 18,),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: HeadingText(heading: 'How rare is the INFP personality type?',size: 25,)),
              SizedBox(height: 10,),
              HeadingText(heading: "INFP is the eighth most prevalent personality type. They come up with:\n\n4% of the population in general\n5% of women.\n4% of men",size: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
