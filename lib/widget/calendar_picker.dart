import 'package:custom_calender_picker/custom_calender_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendarPickerWidget extends StatefulWidget {
  final ValueChanged<DateTime?> onDateSelected;

  const CustomCalendarPickerWidget({Key? key, required this.onDateSelected}) : super(key: key);

  @override
  _CustomCalenderPickerWidgetState createState() => _CustomCalenderPickerWidgetState();
}

class _CustomCalenderPickerWidgetState extends State<CustomCalendarPickerWidget> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () async {
              var result = await showDialog(
                context: context,
                builder: (context) => Dialog(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: CustomCalenderPicker(
                    returnDateType: ReturnDateType.list,
                    initialDateList: [selectedDate].whereType<DateTime>().toList(),
                    calenderThema: CalenderThema.white,
                  ),
                ),
              );
              if (result != null && result is List<DateTime> && result.isNotEmpty) {
                setState(() {
                  selectedDate = result.first;
                  widget.onDateSelected(selectedDate);
                });
              }
            },
            child: const Text('Select Date'),
          ),
          if (selectedDate != null)
            Text(
              DateFormat('yyyy-MM-dd').format(selectedDate!),
            ),
        ],
      ),
    );
  }
}
