import 'package:flutter/material.dart';

class UpcomingCard extends StatelessWidget {
const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.symmetric(
        vertical: 22,
        horizontal: 20
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/doctor_2.jpg",
            width: 45,
            )
          ),

          const SizedBox(width: 14),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(bottom: 5),
              child: Text("Dr. Winnie Ballard", 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                  ),
                ),
              ),
              const Text(
                "Dental Specialist",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),

              const SizedBox(height: 18),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 18,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14.0, left: 6),
                    child: Text(
                      "Today",
                      style: TextStyle(
                        color: Colors.white,
                      )
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.access_time_outlined,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "16:30 - 17:30 AM", 
                    style: TextStyle(
                        color: Colors.white,
                      )
                  )
                ],
                )
              ),
            ]
          )
        ],
      )
    );
  }
}