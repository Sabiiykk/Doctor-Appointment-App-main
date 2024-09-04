import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const CategoryIcon({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        SizedBox(height: 8),
        Text(text, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
