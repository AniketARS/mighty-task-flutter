import 'package:flutter/material.dart';

import '../widgets/dotted_background.dart';
import '../widgets/project_boards.dart';
import '../widgets/task_tabs.dart';
import '../widgets/team_member.dart';
import '../widgets/title_main.dart';
import '../widgets/work_in_progress.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
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
            const DottedBackground(),
          ],
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
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
