import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(icon: "assets/appointment.png", name: "Appointment"),
      CustomIcon(icon: "assets/hospital.png", name: "Hospital"),
      CustomIcon(icon: "assets/virus.png", name: "Covid-19"),
      CustomIcon(icon: "assets/more.png", name: "More"),
    ];

    List<CustomIcon> healthNeeds = [
      CustomIcon(icon: "assets/appointment.png", name: "Appointment"),
      CustomIcon(icon: "assets/hospital.png", name: "Hospital"),
      CustomIcon(icon: "assets/virus.png", name: "Covid-19"),
      CustomIcon(icon: "assets/drug.png", name: "Pharmacy"),
    ];

    List<CustomIcon> specialisedCared = [
      CustomIcon(icon: "assets/blood.png", name: "Diabetes"),
      CustomIcon(icon: "assets/health_care.png", name: "Health Care"),
      CustomIcon(icon: "assets/tooth.png", name: "Dental"),
      CustomIcon(icon: "assets/insurance.png", name: "Insurance"),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                if (index == customIcons.length - 1) {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    showDragHandle: true,
                    builder: (context) {
                      return Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          height: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Health needs section
                              Text(
                                "Health Needs",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 15),
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(healthNeeds.length, (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primaryContainer
                                                  .withOpacity(0.4)),
                                          child: Image.asset(healthNeeds[index].icon),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(healthNeeds[index].name)
                                    ]
                                  );
                                }),
                              ),

                              const SizedBox(height: 30),

                              // Specialised care section
                              Text(
                                "Special Care",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 15),
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(specialisedCared.length, (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primaryContainer
                                                  .withOpacity(0.4)),
                                          child: Image.asset(specialisedCared[index].icon),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(specialisedCared[index].name)
                                    ]
                                  );
                                }),
                              )

                            ],
                          ));
                    },
                  );
                }
              },
              borderRadius: BorderRadius.circular(90),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(0.4)),
                child: Image.asset(customIcons[index].icon),
              ),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].name)
          ],
        );
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
