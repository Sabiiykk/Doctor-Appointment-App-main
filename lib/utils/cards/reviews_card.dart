import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/doctor_details_model.dart';

class ReviewsCard extends StatelessWidget {
  final DoctorDetailModel doctorDetailModel;

  const ReviewsCard({super.key, required this.doctorDetailModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16), // Increase padding for better spacing
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12), // Match card's rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05), // Softer shadow
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 4), // Adjust shadow position
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Patients Reviews',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor, // Use theme color for heading
              ),
            ),
            const SizedBox(height: 8), // Add space between title and description
            Text(
              doctorDetailModel.patientsReviews,
              style: const TextStyle(
                fontSize: 14, // Better font size for readability
                color: Colors.black87, // Subtle text color
                height: 1.5, // Increase line height for readability
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 8, // Limit max lines, but enough for detail
            ),
          ],
        ),
      ),
    );
  }
}
