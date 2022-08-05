import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'step3/completed.dart';

class Step3 extends StatefulWidget {
  const Step3({Key? key}) : super(key: key);

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  String selectedWord = "";
  int number = 1;
  int step = 1;

  @override
  Widget build(BuildContext context) {
    const chipStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
    return step >= 3
        ? const Completed()
        : Column(
            children: [
              const Text(
                "Create Password",
                style: TextStyle(
                  color: Color.fromRGBO(223, 187, 6, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Select each word in the order it was \npresented to you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$number. ",
                    style: const TextStyle(
                      color: Color.fromRGBO(223, 187, 6, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    selectedWord,
                    style: const TextStyle(
                      color: Color.fromRGBO(223, 187, 6, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 120),
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: step,
                selectedColor: const Color.fromRGBO(223, 187, 6, 1),
                unselectedColor: Colors.grey,
              ),
              const SizedBox(height: 20),
              Container(
                  height: 144,
                  width: 320,
                  color: const Color.fromRGBO(255, 255, 255, 0.06),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedWord = "Abuse";
                              });
                              Future.delayed(const Duration(seconds: 1), () {
                                setState(() {
                                  selectedWord = "";
                                  number++;
                                  step++;
                                });
                              });
                            },
                            child: const Chip(
                              label: Text("Abuse", style: chipStyle),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedWord = "Exit";
                              });
                              Future.delayed(const Duration(seconds: 1), () {
                                setState(() {
                                  selectedWord = "";
                                  number++;
                                  step++;
                                });
                              });
                            },
                            child: const Chip(
                              label: Text("Exit", style: chipStyle),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedWord = "Target";
                              });
                              Future.delayed(const Duration(seconds: 1), () {
                                setState(() {
                                  selectedWord = "";
                                  number++;
                                  step++;
                                });
                              });
                            },
                            child: const Chip(
                              label: Text("Target", style: chipStyle),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedWord = "Frequent";
                                Future.delayed(const Duration(seconds: 1), () {
                                  setState(() {
                                    selectedWord = "";
                                    number++;
                                    step++;
                                  });
                                });
                              });
                            },
                            child: const Chip(
                              label: Text("Frequent", style: chipStyle),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedWord = "Organ";
                              });
                              Future.delayed(const Duration(seconds: 1), () {
                                setState(() {
                                  selectedWord = "";
                                  number++;
                                  step++;
                                });
                              });
                            },
                            child: const Chip(
                              label: Text("Organ", style: chipStyle),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedWord = "Bubble";
                              });
                              Future.delayed(const Duration(seconds: 1), () {
                                setState(() {
                                  selectedWord = "";
                                  number++;
                                  step++;
                                });
                              });
                            },
                            child: const Chip(
                              label: Text("Bubble", style: chipStyle),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ))
            ],
          );
  }
}
