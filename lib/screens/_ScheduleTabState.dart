import 'package:flutter/material.dart';

class CancelScreen extends StatelessWidget {
  const CancelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancel Appointment'),
      ),
      body: const Center(
        child: Text(
          'Appointment has been cancelled.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

// Reschedule Screen
class RescheduleScreen extends StatelessWidget {
  const RescheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reschedule Appointment'),
      ),
      body: const Center(
        child: Text(
          'Please select a new date and time for your appointment.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
