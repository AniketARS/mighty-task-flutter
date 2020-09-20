import 'package:flutter/material.dart';
import 'package:mighty_task/screens/expanded_screen.dart';
import 'package:mighty_task/screens/main_screen.dart';
import 'package:mighty_task/utils.dart';
import 'package:mighty_task/widgets/bottom_sheet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: mainAppData,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            _index = value;
          });
        },
        children: [
          MainScreen(),
          ExpandedTaskScreen(),
        ],
      ),
      bottomSheet: MyBottomSheet(_index),
    );
  }
}
