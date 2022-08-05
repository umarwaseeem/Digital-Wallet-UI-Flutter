import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

import 'seed_phrase_chips.dart';

class Step2c extends StatefulWidget {
  const Step2c({Key? key}) : super(key: key);

  @override
  State<Step2c> createState() => _Step2cState();
}

class _Step2cState extends State<Step2c> {
  bool showPhrases = false;

  @override
  void dispose() {
    showPhrases = false;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Write Down Your Seed Phrase",
          style: TextStyle(
            color: Color.fromRGBO(223, 187, 6, 1),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "This is your seed phrase. Write it down on a paper and keep it in a safe place. You'll be asked to re-enter this phrase (in order) on the next step.",
          style: TextStyle(
            height: 2,
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 328,
          width: 320,
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Column(
                children: getSeedPhrases(),
              ),
              // if (showPhrases == false)
              //   Container(
              //     color: Colors.white.withOpacity(0.4),
              //   ),
              if (showPhrases == false)
                Blur(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(),
                ),
              if (showPhrases == false)
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Tap to reveal your seed phrase.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Make sure no one is watching your screen.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showPhrases = true;
                          });
                        },
                        child: SizedBox(
                          width: 70,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.remove_red_eye_outlined),
                              SizedBox(width: 10),
                              Text("View"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
