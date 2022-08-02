import 'package:flutter/material.dart';

class ScreenText extends StatelessWidget {
  const ScreenText({
    Key? key,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w500,
        fontSize: 40,
      ),
    );
  }
}
