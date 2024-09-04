import 'package:flutter/material.dart';

import '../screens/_ScheduleTabState.dart';

class AppointmentItem extends StatelessWidget {
  const AppointmentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Appointment Details'),
      trailing: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CancelScreen()),
          );
        },
        child: const Text('Cancel Appointment'),
      ),
    );
  }
}
