// doctor_model.dart
class DoctorModel {
  final String name;
  final String specialization;
  final String imagePath;

  DoctorModel({
    required this.name,
    required this.specialization,
    required this.imagePath,
  });

  // Static list to hold multiple Doctor instances
  static List<DoctorModel> doctorList = [
    DoctorModel(
      name: 'Dr. Steven Carter',
      specialization: 'Cardiologist',
      imagePath: 'assets/doctor01.jpeg',
    ),
    DoctorModel(
      name: 'Dr. Richard Wilson',
      specialization: 'Gynecologist',
      imagePath: 'assets/doctor02.jpeg',
    ),
    DoctorModel(
      name: 'Dr. Robert Smith',
      specialization: 'Dermatologist',
      imagePath: 'assets/doctor03.jpeg',
    ),
    DoctorModel(
      name: '  Dr. Renee Richards',
      specialization: '  Ophthalmologist',
      imagePath: 'assets/doctor04.jpeg',
    ),
    DoctorModel(
      name: 'Dr. Emily Johnson',
      specialization: 'Pediatrician',
      imagePath: 'assets/doctor05.jpeg',
    ),
    DoctorModel(
      name: 'Dr. Tyler Anderson',
      specialization: 'Endocrinologist',
      imagePath: 'assets/doctor06.jpeg',
    ),
    DoctorModel(
      name: 'Dr. Sarah Miller',
      specialization: 'Psychiatrist',
      imagePath: 'assets/doctor07.jpeg',
    ),
    DoctorModel(
      name: 'Dr. Liam Johnson',
      specialization: 'Oncologist',
      imagePath: 'assets/doctor08.jpeg',
    ),
    DoctorModel(
      name: '   Dr. Christopher Scott',
      specialization: 'Pediatrician',
      imagePath: 'assets/doctor09.jpeg',
    ),
  ];
}
