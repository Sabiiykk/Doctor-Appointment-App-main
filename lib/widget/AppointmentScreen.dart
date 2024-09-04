import 'package:flutter/material.dart';

import '../screens/RescheduleScreen.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Appointments'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RescheduleScreen()),
            ).then((result) {
              if (result != null) {
                // Handle the result from RescheduleScreen here, if necessary
                print("Rescheduled to: ${result['date']} at ${result['time']}");
              }
            });
          },
          child: const Text('Reschedule Appointment'),
        ),
      ),
    );
  }
}
