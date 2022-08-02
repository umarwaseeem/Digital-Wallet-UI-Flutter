import 'package:flutter/material.dart';

import '../widgets/chips.dart';
import '../widgets/profile_picture.dart';
import '../widgets/text_with_button.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(66, 22, 21, 1),
            Color.fromRGBO(8, 10, 12, 1),
          ],
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              children: const [
                SizedBox(width: 20),
                ProfilePicture(),
                SizedBox(width: 95),
                TextWithButton(),
              ],
            ),
            const SizedBox(height: 80),
            const Text(
              "9.2632 ETH",
              style: TextStyle(color: Colors.blue, fontSize: 45),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "\$ 16,858.15",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: 10),
                Text(
                  "+0.7%",
                  style: TextStyle(color: Colors.green, fontSize: 18),
                )
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ChipWidget(icon: Icons.send, title: "Sent"),
                SizedBox(width: 15),
                ChipWidget(icon: Icons.send, title: "Received"),
                SizedBox(width: 15),
                ChipWidget(icon: Icons.money, title: "Buy"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
