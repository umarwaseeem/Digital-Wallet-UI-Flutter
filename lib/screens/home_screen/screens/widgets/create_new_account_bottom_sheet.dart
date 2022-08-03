import 'package:flutter/material.dart';

import '../../../../util/button.dart';

Future<dynamic> createNewAccountBottomSheet(BuildContext context) {
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
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 80),
                  const Text(
                    "Create New Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Choose an icon",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                ),
                child: TextFormField(
                  minLines: 1,
                  maxLines: 1,
                  decoration: InputDecoration(
                    label: const Text("Account Name",
                        style: TextStyle(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.yellow,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: Colors.blueGrey.withOpacity(0.8),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Button(
                  text: "Create",
                  buttonColor: const Color.fromRGBO(223, 187, 6, 1),
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              )
            ],
          ),
        );
      });
}
