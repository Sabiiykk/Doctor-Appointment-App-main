// doctor_model.dart
class DoctorModel {
  final String name;
  final String specialization;
  final String imagePath;
  final String reservedTime;
  final String reservedDate;
  final int patients;

  DoctorModel({
    required this.name,
    required this.specialization,
    required this.imagePath,
    required this.reservedTime,
    required this.reservedDate,
    required this.patients,
  });

  // Static list to hold multiple Doctor instances
  static List<DoctorModel> doctorList = [
    DoctorModel(
      name: 'Dr. Steven Carter',
      specialization: 'Cardiologist',
      imagePath: 'assets/doctor01.jpeg',
      reservedTime: '12:00pm-2:00pm',
      reservedDate: '',
      patients: 130,
    ),
    DoctorModel(
      name: 'Dr. Richard Wilson',
      specialization: 'Gynecologist',
      imagePath: 'assets/doctor02.png',
      reservedTime: '9:00am-11:00am',
      reservedDate: '',
      patients: 100,
    ),
    DoctorModel(
      name: 'Dr. Robert Smith',
      specialization: 'Dermatologist',
      imagePath: 'assets/doctor03.jpeg',
      reservedTime: '8:00am-9:30am',
      reservedDate: '',
      patients: 85,
    ),
    DoctorModel(
      name: '  Dr. Renee Richards',
      specialization: '  Ophthalmologist',
      imagePath: 'assets/doctor04.jpeg',
      reservedTime: '12:00pm-2:00pm',
      reservedDate: '',
      patients: 200,
    ),
    DoctorModel(
      name: 'Dr. Emily Johnson',
      specialization: 'Pediatrician',
      imagePath: 'assets/doctor05.jpeg',
      reservedTime: '7:00am-9:00am',
      reservedDate: '',
      patients: 200,
    ),
    DoctorModel(
      name: 'Dr. Tyler Anderson',
      specialization: 'Endocrinologist',
      imagePath: 'assets/doctor06.jpeg',
      reservedTime: '',
      reservedDate: '1:00pm-2:30pm',
      patients: 200,
    ),
    DoctorModel(
      name: 'Dr. Sarah Miller',
      specialization: 'Psychiatrist',
      imagePath: 'assets/doctor07.jpeg',
      reservedTime: '',
      reservedDate: '8:00am-10:00am',
      patients: 200,
    ),
    DoctorModel(
      name: 'Dr. Liam Johnson',
      specialization: 'Oncologist',
      imagePath: 'assets/doctor08.jpeg',
      reservedTime: '8:00am-9:00am',
      reservedDate: '',
      patients: 200,
    ),
    DoctorModel(
      name: 'Dr. Christopher Scott',
      specialization: 'Pediatrician',
      imagePath: 'assets/doctor09.jpeg',
      reservedTime: '',
      reservedDate: '12:00pm-2:00pm',
      patients: 125,
    ),
  ];
}
