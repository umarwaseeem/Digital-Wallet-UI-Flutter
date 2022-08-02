import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/walkthrough_screens/pages/page.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({Key? key}) : super(key: key);

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          PageWidget(
            controller: controller,
            text1: "Property",
            text1Color: Colors.white,
            text2: "Diversity",
            text2Color: const Color.fromRGBO(223, 187, 6, 1),
            imagePath: "assets/images/image1.png",
          ),
          PageWidget(
            controller: controller,
            text1: "Safe",
            text1Color: const Color.fromRGBO(223, 187, 6, 1),
            text2: "Security",
            text2Color: Colors.white,
            imagePath: "assets/images/image2.png",
          ),
          PageWidget(
            controller: controller,
            text1: "Convenient",
            text1Color: Colors.white,
            text2: "Transaction",
            text2Color: const Color.fromRGBO(223, 187, 6, 1),
            imagePath: "assets/images/image3.png",
          ),
        ],
      ),
    );
  }
}
