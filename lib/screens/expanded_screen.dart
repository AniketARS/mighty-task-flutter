import 'package:flutter/material.dart';

import '../utils.dart';
import '../widgets/calender_view.dart';
import '../widgets/dotted_background.dart';
import '../widgets/sub_title.dart';
import '../widgets/task_dashboard_quick.dart';
import '../widgets/title_main.dart';

class ExpandedTaskScreen extends StatefulWidget {
  const ExpandedTaskScreen({super.key});

  @override
  State<ExpandedTaskScreen> createState() => _ExpandedTaskScreenState();
}

class _ExpandedTaskScreenState extends State<ExpandedTaskScreen> {
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
            children: [
              const TitleMain("Your schedule, \nalways up to date"),
              const CalenderView(),
              const SizedBox(height: 20),
              SubTitle(formatter2.format(dateTime), false, "", true),
              const TaskDashboardQuick(),
            ],
          ),
        )
      ],
    );
  }
}
