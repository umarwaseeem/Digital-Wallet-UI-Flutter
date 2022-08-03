import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/home_screen/screens/widgets/network_provider.dart';
import 'package:provider/provider.dart';

import '../screens/widgets/network_tile.dart';

class TextWithButton extends StatefulWidget {
  const TextWithButton({
    Key? key,
  }) : super(key: key);

  @override
  State<TextWithButton> createState() => _TextWithButtonState();
}

class _TextWithButtonState extends State<TextWithButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final networkData = Provider.of<NetworkProvider>(context);

    return Row(
      children: [
        Text(
          networkData.getSelectedNetwork().name,
          style: const TextStyle(color: Colors.white),
        ),
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: const Color.fromRGBO(8, 10, 12, 1),
              context: context,
              builder: (context) {
                return Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          networkData.getSelectedNetwork().name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // - selected network
                      NetworkTile(
                        title: networkData.getSelectedNetwork().name,
                        leadingColor: networkData.getSelectedNetwork().color,
                        selected: true,
                      ),
                      // - other networks
                      const SizedBox(height: 30),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: const Text(
                          "Other Networks",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      Expanded(
                        child: ListView(
                          children: networkData
                              .getUnselectedNetworks()
                              .map((element) {
                            return NetworkTile(
                              title: element.name,
                              leadingColor: element.color,
                              selected: element.selected,
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          icon: const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
