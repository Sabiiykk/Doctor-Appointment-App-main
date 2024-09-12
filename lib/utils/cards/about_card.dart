import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/doctor_details_model.dart';

class AboutCard extends StatelessWidget {
  final DoctorDetailModel doctorDetailModel;

  const AboutCard({super.key, required this.doctorDetailModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Increase elevation for better shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Add rounded corners
      ),
      child: Container(
        width: double.infinity, // Take full width
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
              'About Doctor',
              style: TextStyle(
                fontSize: 16, // Larger heading size
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor, // Use theme color for heading
              ),
            ),
            const SizedBox(height: 8), // Add space between title and description
            Text(
              doctorDetailModel.aboutDescription,
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

