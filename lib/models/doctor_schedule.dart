import '../tabs/ScheduleTab.dart';

class DoctorSchedule {
  final String name;
  final String specialization;
  final String imagePath;
  final String reservedTime;
  final String reservedDate;
  final String numberOfPatients;
  final FilterStatus status;
  DateTime ? selectedDate;

  DoctorSchedule({
    required this.name,
    required this.specialization,
    required this.imagePath,
    required this.reservedTime,
    required this.reservedDate,
    required this.numberOfPatients,
    required this.status,
    this.selectedDate,
  });

  static List<Map<String, dynamic>> convertDoctorSchedulesToMap(
      List<DoctorSchedule> doctorSchedule) {
    return doctorSchedule.map((doctor) {
      return {
        'img': doctor.imagePath,
        'doctorName': doctor.name,
        'doctorTitle': doctor.specialization,
        'reservedDate': doctor.reservedDate,
        'reservedTime': doctor.reservedTime,
        'numberOfPatients': doctor.numberOfPatients,
        'status': doctor.status,
      };
    }).toList();
  }

  // Static list to hold multiple Doctor instances
  static List<DoctorSchedule> doctorList = [
    DoctorSchedule(
      name: 'Dr. Richard Wilson',
      specialization: 'Gynecologist',
      imagePath: 'assets/doctor02.png',
      reservedTime: '9:00am-11:00am',
      reservedDate: ', 2024',
      numberOfPatients: "100",
      status: FilterStatus.Upcoming,
    ),
    DoctorSchedule(
      name: 'Dr. Liam Johnson ',
      specialization: 'Oncologist',
      imagePath: 'assets/doctor08.jpeg',
      reservedTime: '8:00am-9:00am',
      reservedDate: ', 2024',
      numberOfPatients: "200",
      status: FilterStatus.Upcoming,
    ),
    DoctorSchedule(
      name: "Dr. Robert Smith",
      specialization: "Dermatologist",
      imagePath: "assets/doctor03.jpeg",
      reservedDate: 'Tuesday September 24, 2024',
      reservedTime: '12:00pm-2:00pm',
      numberOfPatients: "85",
      status: FilterStatus.Upcoming,
    ),
    DoctorSchedule(
      name: 'Dr. Steven Carter',
      specialization: 'Cardiologist',
      imagePath: 'assets/doctor01.jpeg',
      reservedTime: '12:00pm-2:00pm',
      reservedDate: ', 2024',
      numberOfPatients: "130",
      status: FilterStatus.Upcoming,
    ),
    DoctorSchedule(
      name: 'Dr. Tyler Anderson',
      specialization: 'Endocrinologist',
      imagePath: 'assets/doctor06.jpeg',
      reservedDate: ', 2024',
      reservedTime: '7:00am-9:00am',
      numberOfPatients: "200",
      status: FilterStatus.Complete,
    ),
    DoctorSchedule(
      name: 'Dr. Sarah Miller',
      specialization: 'Psychiatrist',
      imagePath: 'assets/doctor07.jpeg',
      reservedTime: '8:00am-10:00am',
      reservedDate: ', 2024',
      numberOfPatients: "200",
      status: FilterStatus.Complete,
    ),
    DoctorSchedule(
      name: 'Dr. Christopher Scott ',
      specialization: 'Pediatrician',
      imagePath: 'assets/doctor09.jpeg',
      reservedTime: '12:00pm-2:00pm',
      reservedDate: '',
      numberOfPatients: "125",
      status: FilterStatus.Complete,
    ),
    DoctorSchedule(
      name: 'Dr. Emily Johnson',
      specialization: 'Pediatrician',
      imagePath: 'assets/doctor05.jpeg',
      reservedTime: '1:00pm-2:30pm',
      reservedDate: '',
      numberOfPatients: "200",
      status: FilterStatus.Complete,
    ),
    DoctorSchedule(
      name: 'Dr. Renee Richards',
      specialization: 'Ophthalmologist',
      imagePath: 'assets/doctor04.jpeg',
      reservedTime: '2:30pm-3:30pm',
      reservedDate: '',
      numberOfPatients: "200",
      status: FilterStatus.Complete,
    ),
    DoctorSchedule(
        name: 'Dr. Robert Smith',
        specialization: 'Dermatologist',
        imagePath: 'assets/doctor03.jpeg',
        reservedTime:  '9:30am-10:30am',
        reservedDate: ' ',
        numberOfPatients: "85",
        status: FilterStatus.Cancel,
    ),
  ];
}
