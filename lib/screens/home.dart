// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:doctor_appointment_app_main_test/styles/colors.dart';
import 'package:doctor_appointment_app_main_test/tabs/HomeTab.dart';
import 'package:doctor_appointment_app_main_test/tabs/ScheduleTab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<Map> navigationBarItems = [
  {'icon': Icons.local_hospital, 'index': 0},
  {'icon': Icons.calendar_today, 'index': 1},
];

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void goToSchedule() {
    setState(() {
      _selectedIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeTab(onPressedScheduleCard: goToSchedule),
      const ScheduleTab(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(MyColors.primary),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SafeArea(child: screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        selectedItemColor: const Color(MyColors.primary),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: navigationBarItems.map((navigationBarItem) {
          int index = navigationBarItem['index'] as int;
          return BottomNavigationBarItem(
            icon: Container(
              height: 55,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _selectedIndex == index
                        ? const Color(MyColors.bg01)
                        : Colors.transparent,
                    width: 5,
                  ),
                ),
              ),
              child: Icon(
                navigationBarItem['icon'] as IconData,
                color: _selectedIndex == index
                    ? const Color(MyColors.bg01)
                    : const Color(MyColors.bg02),
              ),
            ),
            label: '',
          );
        }).toList(),
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
