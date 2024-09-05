import 'package:flutter/material.dart';
import '../models/doctor_details_model.dart';
import '../styles/colors.dart';

class DetailDoctorCard extends StatelessWidget {
  final DoctorDetailModel doctorDetail;
  final String doctorName;

  const DetailDoctorCard({
    Key? key,
    required this.doctorDetail,
    required this.doctorName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorName,
                   // doctorDetail.doctorName(), // Display the doctor's name
                    style: TextStyle(
                      color: Color(MyColors.header01),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Image(
              image: AssetImage(doctorDetail.image), // Display the doctor's image
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
