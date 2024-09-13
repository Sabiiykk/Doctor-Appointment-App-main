import 'package:doctor_appointment_app_main_test/models/doctor.dart';
import 'package:doctor_appointment_app_main_test/screens/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment_app_main_test/screens/doctor_detail.dart';
import 'package:doctor_appointment_app_main_test/screens/home.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const Home(),
  '/detail': (context) {
    final doctor = ModalRoute.of(context)!.settings.arguments as Doctor;
    return SliverDoctorDetail(doctor: doctor);
  },
  '/login': (context) => const LoginPage(),
};
