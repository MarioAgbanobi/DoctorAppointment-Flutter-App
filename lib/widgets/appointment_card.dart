import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 22,
        horizontal: 20
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
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
                  ),
                ),
              ),
              Text(
                "Dental Specialist",
                style: Theme.of(context).textTheme.bodyLarge),

              const SizedBox(height: 18),

              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 18,
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14.0, left: 6),
                    child: Text(
                      "Today",
                      style: TextStyle(
                        color: Colors.black,
                      )
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.access_time_outlined,
                      size: 18,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "16:30 - 17:30 AM", 
                    style: TextStyle(
                        color: Colors.black,
                      )
                  )
                ],
                )
              ),

              Row(
                children: [
                  SizedBox(
                    height: 32,
                    child: OutlinedButton(
                      onPressed: () {}, 
                      child: const Text("Cancel")
                    ),
                  ),

                  const SizedBox(width: 10),

                  SizedBox(
                    height: 32,
                    child: FilledButton(
                      onPressed: () {}, 
                      child: const Text("Reschedule")
                    ),
                  ),
                ],
              ),

            ]
          )
        ],
      )
    );
  }
}