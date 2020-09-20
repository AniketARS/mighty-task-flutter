import 'package:flutter/material.dart';
import 'package:mighty_task/widgets/calender_view.dart';
import 'package:mighty_task/widgets/dotted_background.dart';
import 'package:mighty_task/widgets/sub_title.dart';
import 'package:mighty_task/widgets/task_dashboard_quick.dart';
import 'package:mighty_task/widgets/title_main.dart';

import '../utils.dart';

class ExpandedTaskScreen extends StatefulWidget {
  @override
  _ExpandedTaskScreenState createState() => _ExpandedTaskScreenState();
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
            DottedBackground(),
          ],
        ),
        SafeArea(
          child: Column(
            children: [
              TitleMain("Your schedule, \nalways up to date"),
              CalenderView(),
              SizedBox(height: 20),
              SubTitle(formatter2.format(dateTime), false, "", true),
              TaskDashboardQuick(),
            ],
          ),
        )
      ],
    );
  }
}
