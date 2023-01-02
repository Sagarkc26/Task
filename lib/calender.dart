import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class calenderPage extends StatefulWidget {
  const calenderPage({super.key});

  @override
  State<calenderPage> createState() => _calenderPageState();
}

class _calenderPageState extends State<calenderPage> {
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Selected Day=" + today.toString().split(" ")[0]),
          Container(
            child: TableCalendar(
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 10),
              lastDay: DateTime.utc(2030, 3, 10),
              onDaySelected: _onDaySelected,
            ),
          )
        ],
      ),
    );
  }
}
