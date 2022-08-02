import 'package:flutter/material.dart';
import 'package:leew_wallet/util/button.dart';

import '../walkthrough_screens/pages/widgets/screen_text.dart';
import 'by_seed_phrase/screens/seed_phrase.dart';

class WalletSetup extends StatelessWidget {
  const WalletSetup({Key? key}) : super(key: key);

  static const routeName = "wallet setup";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/image4a.png"),
                  Image.asset("assets/images/image4.png"),
                ],
              ),
              const SizedBox(height: 116),
              const ScreenText(
                text: "Wallet Setup",
                textColor: Colors.white,
              ),
              const SizedBox(height: 36),
              Button(
                textColor: Colors.white,
                text: "Import Using Seed Phrase",
                buttonColor: const Color.fromRGBO(32, 40, 50, 1),
                onPressed: () {
                  Navigator.of(context).pushNamed(SeedPhrase.routeName);
                },
              ),
              const SizedBox(height: 16),
              Button(
                textColor: Colors.white,
                text: "Create A New Wallet",
                buttonColor: const Color.fromRGBO(223, 187, 6, 1),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
