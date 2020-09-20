import 'package:flutter/material.dart';
import 'package:mighty_task/utils.dart';

class TaskDashboardQuick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          itemCount: projects.length,
          padding: EdgeInsets.symmetric(horizontal: 15),
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.65,
              margin: EdgeInsets.symmetric(horizontal: 8)
                  .add(EdgeInsets.only(bottom: 30)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    offset: Offset(0, 3),
                    color: Colors.black26,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projects[index].name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 3),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 18,
                          color: Colors.grey[500],
                        ),
                        SizedBox(width: 5),
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
