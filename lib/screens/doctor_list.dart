import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/doctor_info_model.dart';
import '../widget/search_input.dart';
import '../widget/top_doctor.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {

  List<DoctorModel> filtereDoctors = [];

  @override
  void initState() {
    super.initState();
    filtereDoctors = DoctorModel.doctorList;
  }

  void _searchDoctor(String query) {
    final suggestions = DoctorModel.doctorList.where((doctor) {
      final doctorName = doctor.name.toLowerCase();
      final input = query.toLowerCase();
      return doctorName.contains(input) || doctor.specialization.toLowerCase().contains(input);
    }).toList();

    setState(() {
      filtereDoctors = suggestions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Search Doctors'),
      ),
      body: Column(
        children: [
          SearchInput(onSearch: _searchDoctor),
          Expanded(
            child: ListView.builder(
              itemCount: filtereDoctors.length,
              itemBuilder: (context, index) {
                final doctor = filtereDoctors[index];
                return TopDoctorCard(
                  img: doctor.imagePath,
                  doctorName: doctor.name,
                  doctorTitle: doctor.specialization,
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
