import 'package:flutter/material.dart';

import '../utils.dart';

class TaskDashboardQuick extends StatelessWidget {
  const TaskDashboardQuick({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          itemCount: projects.length,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.65,
              margin: const EdgeInsets.symmetric(horizontal: 8).add(const EdgeInsets.only(bottom: 30)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    offset: Offset(0, 3),
                    color: Colors.black26,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projects[index].name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 18,
                          color: Colors.grey[500],
                        ),
                        const SizedBox(width: 5),
                        Text(projects[index].toString()),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
