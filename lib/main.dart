import 'package:flutter/material.dart';

import './screens/expanded_screen.dart';
import './screens/main_screen.dart';
import './utils.dart';
import './widgets/bottom_sheet.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: mainAppData,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            _index = value;
          });
        },
        children: const [
          MainScreen(),
          ExpandedTaskScreen(),
        ],
      ),
      bottomSheet: MyBottomSheet(_index),
    );
  }
}
