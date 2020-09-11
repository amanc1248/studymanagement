import 'package:flutter/material.dart';
import 'package:studymanagement/Screens/1_home_page/local_widgets/heading_section.dart';
import 'package:studymanagement/Screens/1_home_page/local_widgets/running_subject.dart';
import 'package:studymanagement/Screens/1_home_page/local_widgets/section_title.dart';
import 'package:studymanagement/Widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingSection(),
            SectionTitle(
              mainHeading: 'Courses',
              subHeading: "Your running subjects",
            ),
            Container(
              height: 155,
              child: RunningSubjects()),
            SectionTitle(
              mainHeading: "Your Schedule",
              subHeading: "Upcoming classes and tasks",
            ),
            Widgets(
              subject: "Physics",
              chapterNumber: "3",
              chapterName: "Force",
              lectureTime: "09:30",
              teacherImage: AssetImage("assets/images/IMG-20200817-WA0000.jpg"),
              teacherName: "Alex Jesus",
              meetIcon: Icons.video_call,
              meetType: "Google Meet",
            )
          ],
        ),
      ),
    );
  }
}