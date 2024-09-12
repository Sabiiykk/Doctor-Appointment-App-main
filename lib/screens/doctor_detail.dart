import 'package:doctor_appointment_app_main_test/models/doctor_info_model.dart';
import 'package:doctor_appointment_app_main_test/utils/cards/about_card.dart';
import 'package:doctor_appointment_app_main_test/utils/cards/location_card.dart';
import 'package:doctor_appointment_app_main_test/utils/cards/reviews_card.dart';
import 'package:doctor_appointment_app_main_test/utils/cards/detail_doctor_card.dart';
import 'package:doctor_appointment_app_main_test/widget/doctor_info.dart';
import 'package:flutter/material.dart';

import '../models/doctor_details_model.dart';
import '../styles/colors.dart';

class SliverDoctorDetail extends StatelessWidget {
  const SliverDoctorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the doctor's name from the route arguments
    final String? doctorName =
        ModalRoute.of(context)?.settings.arguments as String?;

    final DoctorModel doctorModel;

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
          title: Text('Doctor Detail',
            style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor, // Use theme color for heading
          ),
          ),
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
            title: const Text('Doctor Details'),
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
                  DetailDoctorCard(
                      doctorDetail: doctor, doctorName: doctorName),
                  // Pass doctor details here
                  const SizedBox(height: 15),
                  DoctorInfo(
                    patients: doctor.patients,
                    experience: doctor.experience,
                    rating: doctor.rating,
                  ),
                  const SizedBox(height: 30),
                  AboutCard(doctorDetailModel: doctor),
                  const SizedBox(height: 10),
                  ReviewsCard(doctorDetailModel: doctor),
                  const SizedBox(height: 15),
                  LocationCard(doctorDetailModel: doctor),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/bookingScreen');
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      'Book Appointment',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
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
