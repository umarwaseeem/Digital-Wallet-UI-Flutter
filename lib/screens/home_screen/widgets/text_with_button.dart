import 'package:flutter/material.dart';

class TextWithButton extends StatelessWidget {
  const TextWithButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Ethereum Main",
          style: TextStyle(color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
