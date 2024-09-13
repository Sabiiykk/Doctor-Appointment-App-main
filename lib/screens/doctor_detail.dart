// ignore_for_file: library_prefixes

import "package:latlong2/latlong.dart" as latLng;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:doctor_appointment_app_main_test/models/doctor.dart';
import 'package:doctor_appointment_app_main_test/styles/colors.dart';
import 'package:doctor_appointment_app_main_test/styles/styles.dart';

class SliverDoctorDetail extends StatefulWidget {
  final Doctor doctor;
  const SliverDoctorDetail({Key? key, required this.doctor}) : super(key: key);

  @override
  State<SliverDoctorDetail> createState() => _SliverDoctorDetailState();
}

class _SliverDoctorDetailState extends State<SliverDoctorDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            title: Text('Detail Doctor'),
            backgroundColor: Color(MyColors.primary),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/hospital.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: DetailBody(
              doctor: widget.doctor,
            ),
          )
        ],
      ),
    );
  }
}

class DetailBody extends StatefulWidget {
  final Doctor doctor;

  const DetailBody({Key? key, required this.doctor}) : super(key: key);

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DetailDoctorCard(doctor: widget.doctor),
          const SizedBox(
            height: 15,
          ),
          const DoctorInfo(),
          const SizedBox(
            height: 30,
          ),
          Text(
            'About Doctor',
            style: kTitleStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '${widget.doctor.doctorName} is a specialist in internal medicine who specialzed blah blah.',
            style: const TextStyle(
              color: Color(MyColors.purple01),
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Location',
            style: kTitleStyle,
          ),
          const SizedBox(
            height: 25,
          ),
          const DoctorLocation(),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(
                const Color(MyColors.primary),
              ),
            ),
            child: const Text('Book Appointment'),
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}

class DoctorLocation extends StatelessWidget {
  const DoctorLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FlutterMap(
          options: const MapOptions(
            initialCenter: latLng.LatLng(51.5, -0.09),
            initialZoom: 13.0,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: const ['a', 'b', 'c'],
            )
          ],
        ),
      ),
    );
  }
}

class TileLayerOptions {}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        NumberCard(
          label: 'Patients',
          value: '100+',
        ),
        SizedBox(width: 15),
        NumberCard(
          label: 'Experiences',
          value: '10 years',
        ),
        SizedBox(width: 15),
        NumberCard(
          label: 'Rating',
          value: '4.0',
        ),
      ],
    );
  }
}

class AboutDoctor extends StatelessWidget {
  final String title;
  final String desc;
  const AboutDoctor({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NumberCard extends StatelessWidget {
  final String label;
  final String value;

  const NumberCard({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(MyColors.bg03),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Color(MyColors.grey02),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              value,
              style: const TextStyle(
                color: Color(MyColors.header01),
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailDoctorCard extends StatefulWidget {
  final Doctor doctor;
  const DetailDoctorCard({
    required this.doctor,
    Key? key,
  }) : super(key: key);

  @override
  State<DetailDoctorCard> createState() => _DetailDoctorCardState();
}

class _DetailDoctorCardState extends State<DetailDoctorCard> {
  @override
  Widget build(BuildContext context) {
    // print(widget.doctor.img);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.doctor.doctorName,
                    style: const TextStyle(
                        color: Color(MyColors.header01),
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.doctor.doctorTitle,
                    style: const TextStyle(
                      color: Color(MyColors.grey02),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Image(image: AssetImage(widget.doctor.img))
          ],
        ),
      ),
    );
  }
}
