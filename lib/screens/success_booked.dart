import 'dart:ui';

import 'package:doctor_appointment_app_main_test/widget/datetime_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentBooked extends StatelessWidget {
  const AppointmentBooked({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map?;
    final DateTime? selectedDate = arguments?['selectedDate'];

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              flex: 3,
              child: Icon(
                Icons.check_circle,
                size: 250,
                color: Colors.green,
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'Successfully Booked',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/'),
                child: const Text('Back to Home Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
