import 'package:flutter/material.dart';

class TitleMain extends StatelessWidget {
  final String title;

  TitleMain(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.title,
            style: Theme.of(context).textTheme.headline1,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
                image: DecorationImage(
                  image: AssetImage('assets/images/userPic.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
