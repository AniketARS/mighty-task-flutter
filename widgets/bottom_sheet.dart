import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mighty_task/utils.dart';

class MyBottomSheet extends StatefulWidget {
  final int _index;
  MyBottomSheet(this._index);

  @override
  _MyBottomSheetState createState() => _MyBottomSheetState(_index);
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  int _index = 0;

  _MyBottomSheetState(this._index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _index = 0;
                controller.jumpToPage(_index);
              });
            },
            child: SvgPicture.asset(
              'assets/icons/user.svg',
              width: 22,
              color:
                  _index == 0 ? Colors.white.withOpacity(0.9) : Colors.white30,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 5,
                  )
                ]),
            child: Icon(
              Icons.add,
              size: 32,
              color: Theme.of(context).primaryColor,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _index = 1;
                controller.jumpToPage(_index);
              });
            },
            child: SvgPicture.asset(
              'assets/icons/calender.svg',
              width: 22,
              color:
                  _index == 1 ? Colors.white.withOpacity(0.9) : Colors.white30,
            ),
          ),
        ],
      ),
    );
  }
}
