import 'package:flutter/material.dart';

import '../screens/_ScheduleTabState.dart';

class AppointmentDetailScreen extends StatelessWidget {
  const AppointmentDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointment Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Display appointment details here

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CancelScreen()),
                );
              },
              child: const Text('Cancel Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}
