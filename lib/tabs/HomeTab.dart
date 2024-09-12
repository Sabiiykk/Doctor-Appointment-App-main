import 'package:doctor_appointment_app_main_test/models/doctor_info_model.dart';
import 'package:doctor_appointment_app_main_test/widget/appointment_card.dart';
import 'package:doctor_appointment_app_main_test/widget/category_icon.dart';
import 'package:doctor_appointment_app_main_test/widget/category_icons.dart';
import 'package:doctor_appointment_app_main_test/widget/search_input.dart';
import 'package:doctor_appointment_app_main_test/widget/top_doctor.dart';
import 'package:doctor_appointment_app_main_test/widget/user_intro.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment_app_main_test/styles/colors.dart';
import 'package:doctor_appointment_app_main_test/styles/styles.dart';

List<Map> doctors = [
  {
    'img': 'assets/doctor01.jpeg',
    'doctorName': 'Dr. Steven Carter ',
    'doctorTitle': 'Cardiologist'
  },
  {
    'img': 'assets/doctor02.png',
    'doctorName': 'Dr. Richard Wilson',
    'doctorTitle': 'Gynecologist'
  },
  {
    'img': 'assets/doctor03.jpeg',
    'doctorName': 'Dr. Robert Smith',
    'doctorTitle': 'Dermatologist'
  },
{
'img': 'assets/doctor04.jpeg',
'doctorName': 'Dr. Renee Richards',
'doctorTitle': 'Ophthalmologist',
},
{
'img': 'assets/doctor05.jpeg',
'doctorName': 'Dr. Emily Johnson ',
'doctorTitle': 'Pediatrician'
},
{
'img': 'assets/doctor06.jpeg',
'doctorName': 'Dr. Tyler Anderson ',
'doctorTitle': 'Endocrinologist'
},
{
'img': 'assets/doctor07.jpeg',
'doctorName': 'Dr. Sarah Miller',
'doctorTitle': 'Psychiatrist'
},
{
'img': 'assets/doctor08.jpeg',
'doctorName': 'Dr. Liam Johnson',
'doctorTitle': 'Oncologist'
},
  {
    'img': 'assets/doctor09.jpeg',
    'doctorName': 'Dr. Christopher Scott',
    'doctorTitle': 'Pediatrician'

  }
];

class HomeTab extends StatefulWidget {
  final void Function() onPressedScheduleCard;

  const HomeTab({
    Key? key,
    required this.onPressedScheduleCard,
  }) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  List<DoctorModel> filtereDoctors = [];

  @override
  void initState() {
    super.initState();
    filtereDoctors = DoctorModel.doctorList;
  }

  void searchDoctor(String query) {
    final suggestions = DoctorModel.doctorList.where((doctor) {
      final doctorName = doctor.name.toLowerCase();
      final input = query.toLowerCase();
      return doctorName.contains(input) || doctor.specialization.toLowerCase().contains(input);
    }).toList();

    setState(() {
      filtereDoctors = suggestions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const UserIntro(),
            const SizedBox(
              height: 10,
            ),
            SearchInput(onSearch: searchDoctor),
            const SizedBox(
              height: 20,
            ),
            CategoryIcons(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'UpComing Appointment',
                  style: kTitleStyle,
                ),
                TextButton(
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: Color(MyColors.yellow01),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            AppointmentCard(
              onTap: widget.onPressedScheduleCard,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Top Doctor',
              style: TextStyle(
                color: Color(MyColors.header01),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            for (var doctor in filtereDoctors)
            //var i = 0; i < doctors.length; i++)
              TopDoctorCard(
                img: doctor.imagePath,
                //doctors[i]['img'],
                doctorName:  doctor.name,
                //doctors[i]['doctorName'],
                doctorTitle:  doctor.specialization,
                //doctors[i]['doctorTitle'],
                index: filtereDoctors.indexOf(doctor)
               // i,
              )
          ],
        ),
      ),
    );
  }
}


