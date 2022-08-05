import 'package:flutter/material.dart';

class SeedPhraseChips extends StatelessWidget {
  const SeedPhraseChips({
    Key? key,
    required this.chipNumber1,
    required this.chipName1,
    required this.chipNumber2,
    required this.chipName2,
  }) : super(key: key);

  final String chipNumber1;
  final String chipNumber2;
  final String chipName1;
  final String chipName2;

  @override
  Widget build(BuildContext context) {
    const chipStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Chip(
            backgroundColor: const Color.fromRGBO(24, 30, 37, 1),
            padding: const EdgeInsets.all(15),
            label: Row(
              children: [
                Text("$chipNumber1. ", style: chipStyle),
                Text(chipName1, style: chipStyle),
              ],
            ),
          ),
          Chip(
            padding: const EdgeInsets.all(15),
            backgroundColor: const Color.fromRGBO(24, 30, 37, 1),
            label: Row(
              children: [
                Text("$chipNumber2. ", style: chipStyle),
                Text(chipName1, style: chipStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<SeedPhraseChips> getSeedPhrases() {
  return [
    const SeedPhraseChips(
      chipNumber1: "1",
      chipName1: "Future",
      chipNumber2: "2",
      chipName2: "Exit",
    ),
    const SeedPhraseChips(
      chipNumber1: "3",
      chipName1: "Future",
      chipNumber2: "4",
      chipName2: "Exit",
    ),
    const SeedPhraseChips(
      chipNumber1: "5",
      chipName1: "Future",
      chipNumber2: "6",
      chipName2: "Exit",
    ),
    const SeedPhraseChips(
      chipNumber1: "7",
      chipName1: "Future",
      chipNumber2: "8",
      chipName2: "Exit",
    ),
    const SeedPhraseChips(
      chipNumber1: "9",
      chipName1: "Future",
      chipNumber2: "10",
      chipName2: "Exit",
    ),
  ];
}
