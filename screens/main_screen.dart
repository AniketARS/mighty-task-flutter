import 'package:flutter/material.dart';
import 'package:mighty_task/widgets/dotted_background.dart';
import 'package:mighty_task/widgets/project_boards.dart';
import 'package:mighty_task/widgets/task_tabs.dart';
import 'package:mighty_task/widgets/team_member.dart';
import 'package:mighty_task/widgets/title_main.dart';
import 'package:mighty_task/widgets/work_in_progress.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
            ),
            DottedBackground(),
          ],
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleMain("Hi, Deniela \nlet's get to work"),
              TaskTabs(),
              WorkInProgress(),
              SizedBox(height: 10),
              ProjectBoards(),
              TeamMembers(),
            ],
          ),
        )
      ],
    );
  }
}
