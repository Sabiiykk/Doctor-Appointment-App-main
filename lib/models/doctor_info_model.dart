// doctor_model.dart
class DoctorModel {
  final String name;
  final String specialization;
  final String imagePath;
  final String reservedTime;
  final String reservedDate;

  DoctorModel({
    required this.name,
    required this.specialization,
    required this.imagePath,
    required this.reservedTime,
    required this.reservedDate,
  });

  // Static list to hold multiple Doctor instances
  static List<DoctorModel> doctorList = [
    DoctorModel(
      name: 'Dr. Steven Carter',
      specialization: 'Cardiologist',
      imagePath: 'assets/doctor01.jpeg',
      reservedTime: '12:00pm-2:00pm',
      reservedDate: 'Thursday September 12, 2024',
    ),
    DoctorModel(
      name: 'Dr. Richard Wilson',
      specialization: 'Gynecologist',
      imagePath: 'assets/doctor02.jpeg',
      reservedTime: '9:00am-11:00am',
      reservedDate: 'Monday September 16, 2024',
    ),
    DoctorModel(
      name: 'Dr. Robert Smith',
      specialization: 'Dermatologist',
      imagePath: 'assets/doctor03.jpeg',
      reservedTime: '8:00am-9:30am',
      reservedDate: 'Friday September 20, 2024',
    ),
    DoctorModel(
      name: '  Dr. Renee Richards',
      specialization: '  Ophthalmologist',
      imagePath: 'assets/doctor04.jpeg',
      reservedTime: '12:00pm-2:00pm',
      reservedDate: 'Tuesday September 24, 2024',
    ),
    DoctorModel(
      name: 'Dr. Emily Johnson',
      specialization: 'Pediatrician',
      imagePath: 'assets/doctor05.jpeg',
      reservedTime: '7:00am-9:00am',
      reservedDate: 'Tuesday October 3, 2024',
    ),
    DoctorModel(
      name: 'Dr. Tyler Anderson',
      specialization: 'Endocrinologist',
      imagePath: 'assets/doctor06.jpeg',
      reservedTime: 'Friday August 9,2024',
      reservedDate: '1:00pm-2:30pm',
    ),
    DoctorModel(
      name: 'Dr. Sarah Miller',
      specialization: 'Psychiatrist',
      imagePath: 'assets/doctor07.jpeg',
      reservedTime: 'Friday October 11, 2024',
      reservedDate: '8:00am-10:00am',
    ),
    DoctorModel(
      name: 'Dr. Liam Johnson',
      specialization: 'Oncologist',
      imagePath: 'assets/doctor08.jpeg',
      reservedTime: '8:00am-9:00am',
      reservedDate: 'Saturday September 14, 2024',
    ),
    DoctorModel(
      name: 'Dr. Christopher Scott',
      specialization: 'Pediatrician',
      imagePath: 'assets/doctor09.jpeg',
      reservedTime: 'Monday October 21, 2024',
      reservedDate: '12:00pm-2:00pm',
    ),
  ];
}
