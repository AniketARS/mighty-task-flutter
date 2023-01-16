import 'package:flutter/material.dart';

import '../utils.dart';

class CalenderView extends StatefulWidget {
  const CalenderView({super.key});

  @override
  State<CalenderView> createState() => _CalenderViewState();
}

class _CalenderViewState extends State<CalenderView> {
  List<Date> _getDateList(DateTime dateTime) {
    List<Date> days = [];
    var start = 2 - DateTime(dateTime.year, dateTime.month).weekday;
    var lastOffset = 42 - (start.abs() + 1 + maxDaysList[dateTime.month]);

    while (start <= 0) {
      days.add(
        Date(day: maxDaysList[dateTime.month - 1] - start, month: dateTime.month - 1, ofCurrentMonth: false),
      );
      start++;
    }
    while (start <= maxDaysList[dateTime.month]) {
      days.add(
        Date(day: start, month: dateTime.month, ofCurrentMonth: true),
      );
      start++;
    }
    start = 1;
    while (start <= lastOffset) {
      days.add(Date(day: start, month: dateTime.month + 1, ofCurrentMonth: false));
      start++;
    }
    return days;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.chevron_left,
                  size: 28,
                ),
                Text(
                  formatter.format(dateTime),
                  style: Theme.of(context).textTheme.headline3,
                ),
                const Icon(
                  Icons.chevron_right,
                  size: 28,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                7,
                (index) => Container(
                  alignment: Alignment.center,
                  width: 25,
                  child: Text(
                    weekDays[index],
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20).add(const EdgeInsets.only(bottom: 25)),
            height: 1,
            color: Colors.grey[400],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: List.generate(6, (i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(7, (j) {
                      var days = _getDateList(dateTime);
                      var index = (7 * i + (j + 1)) - 1;
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: days[index].day == dateTime.day ? Theme.of(context).primaryColor : Colors.transparent,
                        ),
                        width: 40,
                        height: 40,
                        child: Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: Text(
                            days[index].day < 10 ? '0${days[index].day}' : days[index].day.toString(),
                            style: Theme.of(context).textTheme.headline5?.apply(
                                  color: days[index].ofCurrentMonth
                                      ? days[index].day == dateTime.day
                                          ? Colors.white
                                          : Theme.of(context).textTheme.headline5?.color
                                      : Colors.grey[400],
                                ),
                          ),
                        ),
                      );
                    }),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
