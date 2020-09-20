import 'package:flutter/material.dart';

class DottedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          children: List.generate(
            6,
            (index) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  11,
                  (index) => Container(
                        width: 5,
                        height: 5,
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white12,
                        ),
                      )).toList(),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
