import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RescheduleScreen extends StatefulWidget {
  const RescheduleScreen({Key? key}) : super(key: key);

  @override
  _RescheduleScreenState createState() => _RescheduleScreenState();
}

class _RescheduleScreenState extends State<RescheduleScreen> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reschedule Appointment'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  setState(() {
                    _selectedDate = pickedDate;
                  });
                }
              },
              child: const Text('Select Date'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (pickedTime != null) {
                  setState(() {
                    _selectedTime = pickedTime;
                  });
                }
              },
              child: const Text('Select Time'),
            ),
            const SizedBox(height: 20),
            if (_selectedDate != null && _selectedTime != null)
              Text(
                'Selected Date and Time: ${DateFormat('yyyy-MM-dd').format(_selectedDate!)} ${_selectedTime!.format(context)}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                print("Reschedule confirmed: ${_selectedDate?.toString()} ${_selectedTime?.format(context)}");
                Navigator.pop(context, {'date': _selectedDate, 'time': _selectedTime});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Confirm Reschedule'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                print("Reschedule canceled");
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}
