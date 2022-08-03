import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Function? onPressed;
  final Color textColor;

  const Button({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.onPressed,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 328,
      child: TextButton(
        onPressed: onPressed == null
            ? null
            : () {
                onPressed!();
              },
        style: OutlinedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(80),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
