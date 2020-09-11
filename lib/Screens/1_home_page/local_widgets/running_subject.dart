
import 'package:flutter/material.dart';
import 'package:studymanagement/Screens/1_home_page/local_widgets/modalclass.dart';
class RunningSubjects extends StatelessWidget {
  final List<Subject> subjects = [
    Subject(
      subjectIcon: Icons.format_list_numbered,
      subjectTitle: "Mathematics",
      color:Colors.redAccent
    ),
    Subject(
      subjectIcon: Icons.border_horizontal,
      subjectTitle: "Chemistry",
      color:Color(0xFFFFBD69)

    ),
    Subject(
      subjectIcon: Icons.ac_unit,
      subjectTitle: "History",
      color:Color(0xFFFF4171)

    ),
    Subject(
      subjectIcon: Icons.computer,
      subjectTitle: "Programming",
      color:Colors.lightBlueAccent
      

    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: subjects.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top:15,bottom:15,right: 12,left:12),
        child: Container(
          height: 120,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color:subjects[index].color
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(
              subjects[index].subjectIcon,size:60,color: Colors.grey[400],
            ),
            Text(subjects[index].subjectTitle,
            style: TextStyle(
              fontSize:17,
              fontWeight: FontWeight.w800,
              color: Colors.white
            ),)
          ],)
        ),
      ),
    );
  }
}