import 'package:flutter/material.dart';
import 'package:doctor_appointment_app_main_test/styles/colors.dart';
import 'package:doctor_appointment_app_main_test/styles/styles.dart';
import 'package:intl/intl.dart';

import '../widget/calendar_picker.dart';
import '../widget/datetime_card.dart';

class ScheduleTab extends StatefulWidget {
  const ScheduleTab({Key? key}) : super(key: key);

  @override
  State<ScheduleTab> createState() => _ScheduleTabState();
}

// ignore: constant_identifier_names
enum FilterStatus { Upcoming, Complete, Cancel }

List<Map> schedules = [
  {
    'img': 'assets/doctor08.jpeg',
    'doctorName': 'Dr. Liam Johnson ',
    'doctorTitle': 'Oncologist',
    'reservedDate': 'Saturday September 14, 2024',
    'reservedTime': '8:00am-9:00am',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor01.jpeg',
    'doctorName': 'Dr. Steven Carter  ',
    'doctorTitle': 'Cardiologist',
    'reservedDate': 'Monday September 16, 2024',
    'reservedTime': '9:00am-11:00am',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor02.png',
    'doctorName': 'Dr. Richard Wilson ',
    'doctorTitle': 'Gynecologist',
    'reservedDate': 'Friday September 20, 2024',
    'reservedTime': '8:00am-9:30am',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor03.jpeg',
    'doctorName': 'Dr. Robert Smith ',
    'doctorTitle': 'Dermatologist',
    'reservedDate': 'Tuesday September 24, 2024',
    'reservedTime': '12:00pm-2:00pm',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor06.jpeg',
    'doctorName': 'Dr. Tyler Anderson  ',
    'doctorTitle': 'Endocrinologist',
    'reservedDate': 'Tuesday October 3, 2024',
    'reservedTime': '7:00am-9:00am',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor07.jpeg',
    'doctorName': 'Dr. Sarah Miller',
    'doctorTitle': 'Psychiatrist',
    'reservedDate': 'Friday October 11, 2024',
    'reservedTime': '8:00am-10:00am',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor08.jpeg',
    'doctorName': 'Dr. Liam Johnson ',
    'doctorTitle': 'Oncologist',
    'reservedDate': 'Thursday October 17, 2024',
    'reservedTime': '11:00am-1:00pm',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor09.jpeg',
    'doctorName': 'Dr. Christopher Scott ',
    'doctorTitle': 'Pediatrician',
    'reservedDate': 'Monday October 21, 2024',
    'reservedTime': '12:00pm-2:00pm',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor05.jpeg',
    'doctorName': 'Dr. Emily Johnson',
    'doctorTitle': 'Pediatrician',
    'reservedDate': 'Friday August 9,2024',
    'reservedTime': '1:00pm-2:30pm',
    'status': FilterStatus.Complete
  },
  {
    'img': 'assets/doctor04.jpeg',
    'doctorName': 'Dr. Renee Richards',
    'doctorTitle': 'Ophthalmologist',
    'reservedDate': 'Thursday August 22, 2024 ',
    'reservedTime': '2:30pm-3:30pm',
    'status': FilterStatus.Complete
  },
  {
    'img': 'assets/doctor03.jpeg',
    'doctorName': 'Dr. Robert Smith',
    'doctorTitle': 'Dermatologist',
    'reservedDate': 'Friday August 30, 2024 ',
    'reservedTime': '11:30am-2:30pm',
    'status': FilterStatus.Complete
  },
  {
    'img': 'assets/doctor05.jpeg',
    'doctorName': 'Dr. Emily Johnson',
    'doctorTitle': 'Pediatrician',
    'reservedDate': 'Saturday August 17, 2024',
    'reservedTime': '1:00pm-2:30pm',
    'status': FilterStatus.Cancel
  },
  {
    'img': 'assets/doctor01.jpeg',
    'doctorName': 'Dr. Steven Carter  ',
    'doctorTitle': 'Cardiologist',
    'reservedDate': ' Friday September 6,2024',
    'reservedTime': '9:00am-11:00am',
    'status': FilterStatus.Cancel
  },
  {
    'img': 'assets/doctor09.jpeg',
    'doctorName': 'Dr. Christopher Scott ',
    'doctorTitle': 'Pediatrician',
    'reservedDate': 'Thursday September 12, 2024',
    'reservedTime': '12:00pm-2:00pm',
    'status': FilterStatus.Cancel
  },
  {
    'img': 'assets/doctor03.jpeg',
    'doctorName': 'Dr. Robert Smith',
    'doctorTitle': 'Dermatologist',
    'reservedDate': 'Monday September 16, 2024 ',
    'reservedTime': '9:30am-10:30am',
    'status': FilterStatus.Cancel
  },
];

class _ScheduleTabState extends State<ScheduleTab> {
  FilterStatus status = FilterStatus.Upcoming;
  Alignment _alignment = Alignment.centerLeft;
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    List<Map> filteredSchedules = schedules.where((var schedule) {
      return schedule['status'] == status;
    }).toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Schedule',
              textAlign: TextAlign.center,
              style: kTitleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(MyColors.bg),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (FilterStatus filterStatus in FilterStatus.values)
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (filterStatus == FilterStatus.Upcoming) {
                                  status = FilterStatus.Upcoming;
                                  _alignment = Alignment.centerLeft;
                                } else if (filterStatus ==
                                    FilterStatus.Complete) {
                                  status = FilterStatus.Complete;
                                  _alignment = Alignment.center;
                                } else if (filterStatus ==
                                    FilterStatus.Cancel) {
                                  status = FilterStatus.Cancel;
                                  _alignment = Alignment.centerRight;
                                }
                              });
                            },
                            child: Center(
                              child: Text(
                                filterStatus.name,
                                style: kFilterStyle,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                AnimatedAlign(
                  duration: const Duration(milliseconds: 200),
                  alignment: _alignment,
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(MyColors.primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        status.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredSchedules.length,
                itemBuilder: (context, index) {
                  var _schedule = filteredSchedules[index];
                  bool isLastElement = filteredSchedules.length + 1 == index;
                  return Card(
                    margin: !isLastElement
                        ? const EdgeInsets.only(bottom: 20)
                        : EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(_schedule['img']),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _schedule['doctorName'],
                                    style: TextStyle(
                                      color: Color(MyColors.header01),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    _schedule['doctorTitle'],
                                    style: TextStyle(
                                      color: Color(MyColors.grey02),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          DateTimeCard(selectedDate: selectedDate),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  child: const Text('Cancel'),
                                  onPressed: () {},
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  child: const Text('Reschedule'),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => Dialog(
                                        insetPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 20),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: CustomCalendarPickerWidget(
                                          onDateSelected: (DateTime? date) {
                                            setState(() {
                                              selectedDate = date;
                                            });
                                            Navigator.of(context)
                                                .pop(); // Close the dialog
                                          },
                                        ), // Call your custom calendar widget
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
