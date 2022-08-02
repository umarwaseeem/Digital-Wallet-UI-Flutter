import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      label: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      avatar: Icon(icon, color: Colors.white),
      backgroundColor: Colors.blueGrey.withOpacity(1),
    );
  }
}
