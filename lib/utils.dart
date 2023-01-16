import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

ThemeData mainAppData = ThemeData(
  primaryColor: const Color.fromRGBO(65, 87, 223, 1),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontFamily: "Baloo Tammudu 2",
      fontSize: 32,
      height: 1.1,
      fontWeight: FontWeight.w600,
      color: Colors.grey[700],
    ),
    headline3: TextStyle(
      fontFamily: "Baloo Tammudu 2",
      fontSize: 20,
      fontWeight: FontWeight.w700,
      height: 1.1,
      color: Colors.grey[700],
    ),
    headline5: TextStyle(
      fontFamily: "Baloo Tammudu 2",
      fontSize: 18,
      fontWeight: FontWeight.w500,
      height: 1.1,
      color: Colors.grey[700],
    ),
    headline6: TextStyle(
      fontFamily: "Baloo Tammudu 2",
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 1.1,
      color: Colors.grey[700],
    ),
    bodyText2: TextStyle(
      fontFamily: "Baloo Tammudu 2",
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 0.6,
      color: Colors.grey[400],
    ),
    bodyText1: TextStyle(
      fontFamily: "Baloo Tammudu 2",
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.grey[700],
    ),
  ),
);

PageController controller = PageController(
  initialPage: 0,
  keepPage: true,
);

final DateFormat formatter = DateFormat("MMMM yyyy");
final DateFormat formatter2 = DateFormat("d MMMM, yyyy");
final weekDays = ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'];
final monthNames = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec',
];
final DateTime dateTime = DateTime.now();

final maxDaysList = [0, 31, DateTime.now().year ~/ 4 == 0 ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

class Date {
  final int day;
  final int month;
  final bool ofCurrentMonth;

  Date({required this.day, required this.month, required this.ofCurrentMonth});

  @override
  String toString() {
    super.toString();
    String representation = '';
    representation += monthNames[month - 1];
    representation += day < 10 ? ' 0$day' : ' $day';
    return representation;
  }
}

class Project {
  final String name;
  final String category;
  final String author;
  final String type;
  final Date startDate;
  final Date endDate;

  Project({
    required this.name,
    required this.category,
    required this.author,
    required this.startDate,
    required this.endDate,
    required this.type,
  });

  @override
  String toString() {
    return '$startDate - $endDate, 2020';
  }
}

List<Project> projects = [
  Project(
    name: "DashBoard Design",
    category: "Online Banking",
    type: "design",
    author: "Jacob P.",
    startDate: Date(day: 14, month: 9, ofCurrentMonth: true),
    endDate: Date(day: 16, month: 9, ofCurrentMonth: true),
  ),
  Project(
    name: "Navigation Design",
    category: "Online Banking",
    type: "design",
    author: "Jacob P.",
    startDate: Date(day: 16, month: 9, ofCurrentMonth: true),
    endDate: Date(day: 22, month: 9, ofCurrentMonth: true),
  ),
  Project(
    name: "DashBoard Functioning",
    category: "Online Banking",
    type: "coding",
    author: "Jacob P.",
    startDate: Date(day: 25, month: 9, ofCurrentMonth: true),
    endDate: Date(day: 28, month: 9, ofCurrentMonth: true),
  ),
  Project(
    name: "Interaction Users",
    category: "Online Banking",
    type: "coding",
    author: "Jacob P.",
    startDate: Date(day: 30, month: 9, ofCurrentMonth: true),
    endDate: Date(day: 4, month: 10, ofCurrentMonth: true),
  ),
];

class WorkInProgress {
  final double percentage;
  final String name;

  WorkInProgress(this.name, this.percentage);
}

List<WorkInProgress> works = [
  WorkInProgress("Brief", 0.75),
  WorkInProgress('Run-Up', 0.64),
  WorkInProgress('Mockup', 0.34),
  WorkInProgress('Design', 0.31),
  WorkInProgress('Coding', 0.04),
];

class Participant {
  final String userPic;
  Participant(this.userPic);
}

List<Participant> participants = [
  Participant('assets/images/1.jpg'),
  Participant('assets/images/2.jpg'),
  Participant('assets/images/3.jpg'),
  Participant('assets/images/4.jpg'),
  Participant('assets/images/5.jpg'),
];
