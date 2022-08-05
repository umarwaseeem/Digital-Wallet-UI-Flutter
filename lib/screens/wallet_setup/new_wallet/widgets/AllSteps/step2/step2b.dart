import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Step2b extends StatelessWidget {
  const Step2b({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(width: MediaQuery.of(context).size.width * 0.2),
            const Text(
              "Secure Your Wallet",
              style: TextStyle(
                color: Color.fromRGBO(223, 187, 6, 1),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info_outline, color: Colors.white),
            )
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          "Manual",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "Write down your seed phrase on a piece of paper and store in a safe place.",
          style: TextStyle(
            height: 1.5,
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "Security lever: Very strong",
          style: TextStyle(
            height: 1.5,
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 20),
        const SizedBox(
          width: 200,
          child: StepProgressIndicator(
            totalSteps: 3,
            currentStep: 3,
            selectedColor: Colors.green,
            unselectedColor: Colors.green,
          ),
        ),
        const Text(
          "Risks are:\n\u2022 You Lose It\n\u2022 You forgot where you put it.\n\u2022 Someone else finds this.",
          style: TextStyle(
            height: 2,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        const Text(
          "Other options: \n\nTips: \n Doesn't have to be paper!\n\u2022 Store in a bank vault\n\u2022 Store in a safe\n\u2022 Store in multiple secret places",
          style: TextStyle(
            height: 2,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
