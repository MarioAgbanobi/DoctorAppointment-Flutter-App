import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text("Your Schedule")
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // Segmented controllers 
          CupertinoSlidingSegmentedControl(
            padding: const EdgeInsets.all(16),
            groupValue: activeIndex,
            children: const {
            0: Text("Upcoming"),
            1: Text("Complete"),
            2: Text("Results")},
            onValueChanged: (value) {
              setState(() {
                activeIndex = value!;
              });
            })
        ],
      ),
    );
  }
}