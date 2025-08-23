import 'calendar_page.dart';
import 'chats_page.dart';
import 'profile_page.dart';
import 'package:doctor_app/widgets/health_needs.dart';
import 'package:doctor_app/widgets/nearby_doctors.dart';
import 'package:doctor_app/widgets/upcoming_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final _pages = [
    const HomeContent(),
    const CalendarPage(),
    const ChatsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi, June"),
            Text(
              "How are you feeling today?",
              style: Theme.of(context).textTheme.bodySmall,
            )
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
        padding: const EdgeInsets.all(14),
        children: [
          // upcoming card
          const UpcomingCard(),
          // health card
          const SizedBox(height: 20),
          Text(
            "Health Needs",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 15),
          const HealthNeeds(),
          // nearby card
          const SizedBox(height: 20),
          Text(
            "Nearby Doctors",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 15),
          const NearbyDoctors()
        ],
      ),
    );
  }
}