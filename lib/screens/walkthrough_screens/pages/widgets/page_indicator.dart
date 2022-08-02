import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      onDotClicked: (index) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      effect: const WormEffect(
        activeDotColor: Color.fromRGBO(61, 141, 255, 1),
        dotColor: Color.fromRGBO(56, 70, 87, 1),
        dotHeight: 10,
        dotWidth: 10,
        spacing: 8,
        radius: 8,
      ),
      controller: controller,
      count: 3,
    );
  }
}
