import 'package:flutter/material.dart';

class Step2a extends StatelessWidget {
  const Step2a({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.asset("assets/images/image2.png"),
          const SizedBox(height: 70),
          const Text(
            "Secure Your Wallet",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "Don't risk losing your funds. protect your wallet by saving your Seed phrase in a place you trust. ",
            style: TextStyle(
              height: 1.5,
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "It's the only way to recover your wallet if you get locked out of the app or get a new device.",
            style: TextStyle(
              height: 1.5,
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Remind Me Later",
              style: TextStyle(
                color: Color.fromRGBO(223, 187, 6, 1),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
