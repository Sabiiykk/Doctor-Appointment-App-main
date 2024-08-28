import 'package:flutter/material.dart';
import 'package:doctor_appointment_app_main_test/screens/doctor_detail.dart';
import 'package:doctor_appointment_app_main_test/screens/home.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const Home(),
  '/detail': (context) => const SliverDoctorDetail(),
};
