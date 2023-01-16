import 'dart:math';

import 'package:flutter/material.dart';

import './sub_title.dart';
import '../utils.dart';

class WorkInProgress extends StatelessWidget {
  const WorkInProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SubTitle('Work in progress', false, "", false),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: works.length,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10).subtract(const EdgeInsets.only(top: 5)),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: MediaQuery.of(context).size.width * 0.20,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomPaint(
                          painter: MyCustomPainter(context, works[index].percentage),
                          size: const Size(60, 60),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '${(works[index].percentage * 100).toInt()}%',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        works[index].name,
                        style: Theme.of(context).textTheme.bodyText2?.apply(
                              fontWeightDelta: -2,
                              color: Colors.grey[700],
                            ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MyCustomPainter extends CustomPainter {
  final BuildContext _context;
  final double _percentage;
  MyCustomPainter(this._context, this._percentage);

  @override
  void paint(Canvas canvas, Size size) {
    var bgPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    var fgPaint = Paint()
      ..color = Theme.of(_context).primaryColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    var radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, bgPaint);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2, 2 * pi * _percentage, false, fgPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
