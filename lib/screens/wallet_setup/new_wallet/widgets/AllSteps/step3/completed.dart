import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/tick.png"),
        const Text(
          "SUCCESS !",
          style: TextStyle(
              height: 2,
              color: Color.fromRGBO(223, 187, 6, 1),
              fontSize: 40,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        const Text(
          "You've successfully protected your wallet. Remember to keep your seed phrase safe, it's your responsibility!",
          style: TextStyle(
              height: 2,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        const Text(
          "DefiSquid cannot recover your wallet should you lose it. You can find your seedphrase in Setings > Security & Privacy",
          style: TextStyle(
              height: 2,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
