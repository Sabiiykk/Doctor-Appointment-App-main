import 'package:flutter/material.dart';
import 'category_icon.dart';

class CategoryIcons extends StatelessWidget {
  CategoryIcons({
    Key? key,
  }) : super(key: key);

  final List<Map> categories = [
    {'icon': Icons.coronavirus, 'text': 'Covid 19'},
    {'icon': Icons.local_hospital, 'text': 'Hospital'},
    {'icon': Icons.car_rental, 'text': 'Ambulance'},
    {'icon': Icons.local_pharmacy, 'text': 'Pill'},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var category in categories)
          CategoryIcon(
            icon: category['icon'] as IconData,
            text: category['text'] as String,
          ),
      ],
    );
  }
}
