import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/wallet_setup/new_wallet/widgets/All%20Steps/step1.dart';

import 'All Steps/step2.dart';

List<Step> getSteps(int currentStep) {
  return [
    Step(
      state: currentStep > 0 ? StepState.complete : StepState.indexed,
      title: const Center(child: Text("")),
      content: const Step1(),
      isActive: currentStep >= 0,
    ),
    Step(
      state: currentStep > 1 ? StepState.complete : StepState.indexed,
      title: const Text(""),
      content: const Step2(),
      isActive: currentStep >= 1,
    ),
    Step(
      state: currentStep > 2 ? StepState.complete : StepState.indexed,
      title: const Text(""),
      content: const Text("Step 3 content"),
      isActive: currentStep >= 2,
    ),
  ];
}
