import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String value;
  final String hint;
  final bool isHint;
  final bool onBlue;

  SubTitle(this.value, this.isHint, this.hint, this.onBlue);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text(
            this.value,
            style: Theme.of(context).textTheme.headline3.apply(
                  color: onBlue ? Colors.grey[200] : Colors.grey[700],
                  fontWeightDelta: this.onBlue ? -2 : 0,
                ),
          ),
          SizedBox(width: 10),
          isHint
              ? Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: onBlue
                        ? Colors.white.withOpacity(0.5)
                        : Colors.black.withOpacity(0.3),
                  ),
                )
              : SizedBox(width: 0),
          SizedBox(width: isHint ? 10 : 0),
          isHint
              ? Text(
                  this.hint,
                  style: Theme.of(context).textTheme.headline3.apply(
                        color: onBlue
                            ? Colors.white.withOpacity(0.5)
                            : Colors.black.withOpacity(0.3),
                        fontWeightDelta: -1,
                        fontSizeDelta: -6,
                      ),
                )
              : SizedBox(width: 0),
        ],
      ),
    );
  }
}
