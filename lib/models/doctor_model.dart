class DoctorModel {
  final String name;
  final String position;
  final int averageReview;
  final int totalReview;
  final String profile;
  DoctorModel({
    required this.name, 
    required this.position, 
    required this.averageReview, 
    required this.totalReview, 
    required this.profile
  });
}

List<DoctorModel> nearbyDoctors = [
  DoctorModel(
    name: "Luke Holland", 
    position: "General Practitioner", 
    averageReview: 4, 
    totalReview: 210, 
    profile: 'assets/doctor_1.jpg',
  ),
  DoctorModel(
    name: "Sophie Maroon", 
    position: "General Practitioner", 
    averageReview: 2, 
    totalReview: 156, 
    profile: 'assets/doctor_2.jpg',
  ),
  DoctorModel(
    name: "Louise Reid", 
    position: "General Practitioner", 
    averageReview: 3, 
    totalReview: 222, 
    profile: 'assets/doctor_3.jpg',
  ),
];