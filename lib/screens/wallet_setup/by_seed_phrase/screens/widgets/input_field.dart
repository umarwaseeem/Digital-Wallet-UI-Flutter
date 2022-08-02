import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final int? maxLines;
  final int minLines;
  final TextEditingController controller;
  final dynamic validate;
  // final bool? hide;

  const InputField({
    Key? key,
    required this.hintText,
    required this.maxLines,
    required this.minLines,
    required this.controller,
    required this.validate,
    // required this.hide,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool obscure = false;

  @override
  void initState() {
    obscure = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.maxLines == 1 ? !obscure : false,
      validator: widget.validate,
      controller: widget.controller,
      style: const TextStyle(color: Colors.white),
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              if (widget.maxLines == 1) {
                // because multi lines fields cannot have obscured field
                obscure = !obscure;
              }
            });
          },
          icon: const Icon(Icons.remove_red_eye_outlined, color: Colors.white),
        ),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: Colors.blueGrey.withOpacity(0.8),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: Colors.blueGrey.withOpacity(0.2),
            width: 2.0,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(106, 132, 160, 1),
        ),
      ),
    );
  }
}
