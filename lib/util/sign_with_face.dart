import 'package:flutter/material.dart';

import '../screens/wallet_setup/by_seed_phrase/screens/widgets/switch_button.dart';

class SignWithFace extends StatelessWidget {
  const SignWithFace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, bottom: 36, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Sign In With Face ID ?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SwitchButton(isSwitch: false),
        ],
      ),
    );
  }
}
