import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/home_screen/home_screen.dart';
import 'package:leew_wallet/screens/wallet_setup/new_wallet/widgets/steps.dart';
import 'package:leew_wallet/util/button.dart';

class CreateNewWalletScreen extends StatefulWidget {
  const CreateNewWalletScreen({Key? key}) : super(key: key);

  static const routeName = "create-new-wallet";

  @override
  State<CreateNewWalletScreen> createState() => _CreateNewWalletScreenState();
}

class _CreateNewWalletScreenState extends State<CreateNewWalletScreen> {
  int currentStepNumber = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Create New Wallet"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color.fromRGBO(8, 10, 12, 1),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: Colors.transparent,
                    colorScheme: const ColorScheme.light(
                      primary: Color.fromRGBO(223, 187, 6, 1),
                    ),
                  ),
                  child: Stepper(
                    onStepTapped: (index) {
                      if (index < currentStepNumber) {
                        setState(() {
                          currentStepNumber = index;
                        });
                        return;
                      }

                      if (index > currentStepNumber) {
                        return;
                      }

                      setState(() {
                        currentStepNumber = index;
                      });
                    },
                    type: StepperType.horizontal,
                    steps: getSteps(currentStepNumber),
                    currentStep: currentStepNumber,
                    onStepContinue: () {
                      if (currentStepNumber ==
                          getSteps(currentStepNumber).length - 1) {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      } else {
                        setState(() {
                          currentStepNumber++;
                        });
                      }
                    },
                    onStepCancel: () {
                      if (currentStepNumber > 0) {
                        setState(() {
                          currentStepNumber--;
                        });
                      } else {
                        Navigator.pop(context);
                      }
                    },
                    controlsBuilder: (context, details) {
                      String buttonText = "";
                      if (currentStepNumber == 0) {
                        buttonText = "Create Password";
                      } else if (currentStepNumber == 1 ||
                          currentStepNumber == 2 ||
                          currentStepNumber == 3) {
                        buttonText = "Start";
                      } else if (currentStepNumber == 4) {
                        buttonText = "Next";
                      } else {
                        buttonText = "";
                      }

                      return Container(
                        margin: const EdgeInsets.only(bottom: 30, top: 30),
                        child: Button(
                          text: buttonText,
                          buttonColor: const Color.fromRGBO(223, 187, 6, 1),
                          onPressed: details.onStepContinue,
                          textColor: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
