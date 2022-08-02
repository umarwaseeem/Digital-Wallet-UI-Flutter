import 'package:flutter/material.dart';

import '../../wallet_setup/wallet_setup.dart';
import '../../../util/button.dart';
import 'widgets/page_indicator.dart';
import 'widgets/screen_text.dart';

class PageWidget extends StatelessWidget {
  final PageController controller;
  final String text1;
  final Color text1Color;
  final String text2;
  final Color text2Color;
  final String imagePath;

  const PageWidget({
    Key? key,
    required this.controller,
    required this.text1,
    required this.text2,
    required this.imagePath,
    required this.text1Color,
    required this.text2Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset(
                imagePath,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              const SizedBox(height: 87),
              ScreenText(
                text: text1,
                textColor: text1Color,
              ),
              ScreenText(
                text: text2,
                textColor: text2Color,
              ),
              const SizedBox(height: 85),
              PageIndicator(controller: controller),
              const SizedBox(height: 24),
              Button(
                textColor: Colors.white,
                text: "Get Started",
                buttonColor: const Color.fromRGBO(32, 40, 50, 1),
                onPressed: () {
                  Navigator.of(context).pushNamed(WalletSetup.routeName);
                },
              ),
              const SizedBox(height: 42),
            ],
          ),
        ),
      ),
    );
  }
}
