import 'package:flutter/material.dart';

import '../utils.dart';
import '../widgets/sub_title.dart';

class TeamMembers extends StatelessWidget {
  const TeamMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubTitle('Your team', true, '${participants.length} Participant', true),
        SizedBox(
          height: 55,
          child: ListView.builder(
              itemCount: participants.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  width: 55,
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
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
    );
  }
}
