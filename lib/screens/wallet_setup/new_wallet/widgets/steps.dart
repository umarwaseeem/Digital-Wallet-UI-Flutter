import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/wallet_setup/new_wallet/widgets/AllSteps/step1.dart';
import 'package:leew_wallet/screens/wallet_setup/new_wallet/widgets/AllSteps/step3.dart';

import 'AllSteps/step2/step2a.dart';
import 'AllSteps/step2/step2b.dart';
import 'AllSteps/step2/step2c.dart';

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
      content: const Step2a(),
      isActive: currentStep >= 1,
    ),
    Step(
      state: currentStep > 2 ? StepState.complete : StepState.indexed,
      title: const Text(""),
      content: const Step2b(),
      isActive: currentStep >= 2,
    ),
    Step(
      state: currentStep > 3 ? StepState.complete : StepState.indexed,
      title: const Text(""),
      content: const Step2c(),
      isActive: currentStep >= 3,
    ),
    Step(
      state: currentStep > 4 ? StepState.complete : StepState.indexed,
      title: const Text(""),
      content: const Step3(),
      isActive: currentStep >= 4,
    ),
  ];
}
