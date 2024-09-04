import 'package:doctor_appointment_app_main_test/models/doctor_details_model.dart';
import 'package:doctor_appointment_app_main_test/styles/colors.dart';
import 'package:doctor_appointment_app_main_test/styles/styles.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  final DoctorDetailModel doctorDetailModel;
  final String img;
  final String doctorName;
  final String doctorTitle;

  const DetailBody({
    required this.doctorDetailModel,
    required this.img,
    required this.doctorName,
    required this.doctorTitle,
  super.key,  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 30),
          Text(
            'About Doctor',
            style: kTitleStyle,
          ),
          const SizedBox(height: 15),
          Text(
          doctorDetailModel.aboutDescription,
            style: TextStyle(
              color: Color(MyColors.purple01),
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 25),
          Text(
            doctorDetailModel.location,
            style: kTitleStyle,
          ),
          const SizedBox(height: 25),

          const SizedBox(height: 25),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(
                Color(MyColors.primary),
              ),
            ),
            child: const Text('Book Appointment'),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
