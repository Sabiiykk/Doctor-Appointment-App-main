import 'package:doctor_appointment_app_main_test/screens/success_booked.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment_app_main_test/screens/doctor_detail.dart';
import 'package:doctor_appointment_app_main_test/screens/home.dart';

import '../screens/book_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const Home(),
  '/detail': (context) => SliverDoctorDetail(),
  '/doctorDetail': (context) => SliverDoctorDetail(),
  '/bookingScreen': (context) => BookingScreen(),
  '/success_booking': (context) => AppointmentBooked(),
};
