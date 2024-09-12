import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/doctor_details_model.dart';
import '../../styles/colors.dart';

class LocationCard extends StatelessWidget {
  final DoctorDetailModel doctorDetailModel;

  const LocationCard({super.key, required this.doctorDetailModel});

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
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Color(MyColors.yellow02),
                  size: 18,
                ),
                Text(
                  'Location:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor, // Use theme color for heading
                  ),
                ),
              ],
            ),
            Text(
              doctorDetailModel.location,
              style: const TextStyle(
                fontSize: 14, // Better font size for readability
                color: Colors.black87, // Subtle text color
                height: 1.5, // Increase line height for readability
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3, // Limit max lines, but enough for detail
            ),
          ],
        ),
      ),
    );
  }
}
