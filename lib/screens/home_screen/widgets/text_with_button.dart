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
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: const Color.fromRGBO(8, 10, 12, 1),
                context: context,
                builder: (context) {
                  return Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: const [
                        Text(
                          "Network",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                });
          },
          icon: const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
