import 'package:flutter/material.dart';

import '../../../../util/button.dart';
import '../QRSceen.dart';

importAccontBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      backgroundColor: const Color.fromRGBO(8, 10, 12, 1),
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 80),
                  const Text(
                    "Import Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  "Imported accounts are viewable in your wallet but are not recoverable with you DeGe seed phrase.",
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  "Learn more about imported accounts here",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: const Text(
                  "Paste your private key string",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 0,
                ),
                child: TextFormField(
                  minLines: 3,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText:
                        "e.g\n123123123i12b3jh1b23jhb21j312jhv3j12b3jhb12jh32jh323423423423423423424324234234v3",
                    hintStyle: const TextStyle(
                      height: 2,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(106, 132, 160, 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.yellow,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: Colors.blueGrey.withOpacity(0.2),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 50, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const QRScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Scan a QR code",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Button(
                        text: "Import",
                        buttonColor: const Color.fromRGBO(223, 187, 6, 1),
                        onPressed: () {},
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      });
}
