import 'package:flutter/material.dart';

class TaskTabs extends StatefulWidget {
  const TaskTabs({super.key});

  @override
  TaskTabsState createState() => TaskTabsState();
}

class TaskTabsState extends State<TaskTabs> with TickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _curve;
  late Animation<double> _animation;

  final List<Animation<double>> _animations = [];

  int _index = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    for (int i = 0; i < 3; i++) {
      switch (i) {
        case 0:
          _animations.add(Tween<double>(begin: 95, end: 0).animate(_curve));
          break;
        case 1:
          _animations.add(Tween<double>(begin: 0, end: 220).animate(_curve));
          break;
        case 2:
          _animations.add(Tween<double>(begin: 220, end: 95).animate(_curve));
          break;
      }
    }
    _animation = _animations[1];
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (_index == 1) {
                        _animation = _animations[0];
                        _controller.forward();
                      } else if (_index == 2) {
                        _animation = _animations[1];
                        _controller.reverse();
                      }

                      _index = 0;
                    });
                  },
                  child: Text(
                    'Day',
                    style: Theme.of(context).textTheme.headline3?.apply(
                          color: _index == 0
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).textTheme.headline3?.color,
                        ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (_index == 0) {
                        _animation = _animations[0];
                        _controller.reverse();
                      } else if (_index == 2) {
                        _animation = _animations[2];
                        _controller.forward();
                      }

                      _index = 1;
                    });
                  },
                  child: Text(
                    'Week',
                    style: Theme.of(context).textTheme.headline3?.apply(
                          color: _index == 1
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).textTheme.headline3?.color,
                        ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (_index == 0) {
                        _animation = _animations[1];
                        _controller.forward();
                      } else if (_index == 1) {
                        _animation = _animations[2];
                        _controller.reverse();
                      }

                      _index = 2;
                    });
                  },
                  child: Text(
                    'Month',
                    style: Theme.of(context).textTheme.headline3?.apply(
                          color: _index == 2
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).textTheme.headline3?.color,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 1,
                color: Colors.grey[400],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10).add(
                  EdgeInsets.only(left: _animation.value),
                ),
                width: MediaQuery.of(context).size.width * 0.2,
                height: 5,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
