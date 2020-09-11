import 'package:flutter/material.dart';
import 'package:studymanagement/Screens/2_tasks_page/local_widgets/addEvent.dart';
import 'package:studymanagement/Screens/2_tasks_page/local_widgets/heading.dart';
import 'package:provider/provider.dart';
import 'package:studymanagement/provider.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TheData>(
      builder: (context, value, child) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              child: Column(
            children: [
              //1) Heading
              Expanded(child: Heading()),
              Expanded(child: AddEvent())
            ],
          )),
        ),
      ),
    );
  }
}
