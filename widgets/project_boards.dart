import 'package:flutter/material.dart';
import 'package:mighty_task/utils.dart';
import 'package:mighty_task/widgets/sub_title.dart';

class ProjectBoards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.29,
      child: Column(
        children: [
          SubTitle('Boards', true, "4 in Design", false),
          Container(
            height: 160,
            padding: EdgeInsets.only(bottom: 10),
            child: ListView.builder(
                itemCount: projects.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 12),
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          offset: Offset(0, 3),
                          color: Colors.black26,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0).subtract(
                            EdgeInsets.only(bottom: 5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    projects[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .apply(fontWeightDelta: 2),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.red.withOpacity(0.7),
                                      ),
                                      SizedBox(width: 5),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Text(
                                          projects[index].category,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              .apply(
                                                fontWeightDelta: -1,
                                              ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              projects[index].type == 'design'
                                  ? Icon(
                                      Icons.brush,
                                      size: 32,
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.7),
                                    )
                                  : Icon(
                                      Icons.phonelink_setup,
                                      size: 32,
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.7),
                                    ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey[400],
                          margin: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20).subtract(
                            EdgeInsets.only(top: 5),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[300],
                                        image: DecorationImage(
                                          image:
                                              AssetImage('assets/images/2.jpg'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          projects[index].author,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              .apply(
                                                color: Colors.grey[700],
                                                fontSizeDelta: 2,
                                              ),
                                        ),
                                        SizedBox(height: 8),
                                        Text('Create Task'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        size: 16,
                                        color: Colors.grey[800],
                                      ),
                                      SizedBox(width: 5),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 9),
                                        child: Text(
                                          projects[index].endDate.toString() +
                                              ', ${dateTime.year}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              .apply(color: Colors.grey[700]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text('Due Date'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
