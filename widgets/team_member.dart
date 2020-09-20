import 'package:flutter/material.dart';
import 'package:mighty_task/utils.dart';
import 'package:mighty_task/widgets/sub_title.dart';

class TeamMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SubTitle(
              'Your team', true, '${participants.length} Participant', true),
          Container(
            height: 55,
            child: ListView.builder(
                itemCount: participants.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 15),
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                            participants[index].userPic,
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
