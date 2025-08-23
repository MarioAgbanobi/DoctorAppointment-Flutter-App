import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

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
            children: const {
            0: Text("Upcoming"),
            1: Text("Complete"),
            2: Text("Results")},
            onValueChanged: (value) {

            })
        ],
      ),
    );
  }
}