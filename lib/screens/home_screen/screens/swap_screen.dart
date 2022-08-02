import 'package:flutter/material.dart';

class SwapScreen extends StatelessWidget {
  const SwapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          "Swap",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
