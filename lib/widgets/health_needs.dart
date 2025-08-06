import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
const HealthNeeds({ super.key });

  @override
  Widget build(BuildContext context){
    
  List<CustomIcon> customIcons = [
    CustomIcon(icon: "appointment.png", name: "Appointment"),
    CustomIcon(icon: "hospital.png", name: "Hospital"),
    CustomIcon(icon: "virus.png", name: "Covid-19"),
    CustomIcon(icon: "more.png", name: "More"),
  ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4)
              ),
              child: Image.asset(customIcons[index].icon),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].name)
        ],);
      }),

    );
  }
}

class CustomIcon {
  final String icon;
  final String name;
  CustomIcon({
    required this.icon,
    required this.name,
  });
}