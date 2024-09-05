import 'package:doctor_appointment_app_main_test/widget/detail_doctor_card.dart';
import 'package:doctor_appointment_app_main_test/widget/doctor_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/doctor_details_model.dart';
import '../models/doctor_info_model.dart';
import '../styles/colors.dart';

class SliverDoctorDetail extends StatelessWidget {
  const SliverDoctorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the doctor's name from the route arguments
    final String? doctorName = ModalRoute.of(context)!.settings.arguments as String?;

    if (doctorName == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Doctor Detail'),

        ),
        body: const Center(
          child: Text('No doctor selected.'),
        ),
      );
    }

    // Fetch the corresponding doctor details
    DoctorDetailModel? doctor = DoctorDetailModel.selectedDoc(doctorName);

    if (doctor == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Doctor Detail'),
        ),
        body: const Center(
          child: Text('No details available for this doctor.'),
        ),
      );
    }
    // Pass the doctor details to the DetailDoctorCard widget
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text('Detail Doctor'),
            backgroundColor: Color(MyColors.primary),
            expandedHeight: 200,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/hospital.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DetailDoctorCard(doctorDetail: doctor, doctorName: doctorName,),  // Pass the doctor details here
                  const SizedBox(height: 15),
                  const DoctorInfo(),
                  const SizedBox(height: 30),
                  Text(
                    'About : ${doctor.aboutDescription}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Location: ${doctor.location}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Rating: ${doctor.rating} / 5.0',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Reviews: ${doctor.reviews}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add logic to book an appointment
                    },
                    child: const Text('Book Appointment'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}