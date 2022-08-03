import 'package:flutter/material.dart';

import 'account_tile.dart';
import 'create_new_account_bottom_sheet.dart';

Future<dynamic> accountBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    backgroundColor: const Color.fromRGBO(8, 10, 12, 1),
    context: context,
    builder: (context) {
      return Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "Account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 30,
              ),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const AccountTile(
                    userName: "My User",
                    userBalance: "12.2165 ETH",
                    userImage: "assets/images/image3.png",
                  );
                },
              ),
            ),
          ),
          TextButton(
            child: const Text(
              "Create New Account",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            onPressed: () {
              createNewAccountBottomSheet(context);
            },
          ),
          const SizedBox(height: 10),
          TextButton(
            child: const Text(
              "Import Account",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 20),
        ],
      );
    },
  );
}
