import 'package:flutter/material.dart';
import 'package:leew_wallet/util/sign_with_face.dart';

import '../../../by_seed_phrase/screens/widgets/input_field.dart';

class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  bool checkBoxValue = false;
  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool buttonEnabled = false;

  @override
  void initState() {
    controller1.text = "";
    controller2.text = "";

    super.initState();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: () {
        setState(() {
          _formKey.currentState!.validate();
        });
      },
      autovalidateMode: AutovalidateMode.always,
      key: _formKey,
      child: Column(
        children: [
          const Text(
            "Create Password",
            style: TextStyle(
              color: Color.fromRGBO(223, 187, 6, 1),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "This password will unlock your Metamask wallet only on this service",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 48),
          InputField(
            validate: (value) {
              if (value.isEmpty) {
                return "Password is required";
              }
              if (!numReg.hasMatch(value)) {
                return "Password must contain at least one number";
              }
              if (!letterReg.hasMatch(value)) {
                return "Password must contain at least one letter";
              }
              if (value.length < 8) {
                return "Password must be at least 8 characters";
              }
              return null;
            },
            controller: controller1,
            maxLines: 1,
            minLines: 1,
            hintText: "New Password",
          ),
          const SizedBox(height: 38),
          InputField(
            validate: (value) {
              if (value.isEmpty) {
                return "Password is required";
              }
              if (value != controller1.text) {
                return "Passwords do not match";
              }
              return null;
            },
            controller: controller2,
            maxLines: 1,
            minLines: 1,
            hintText: "Confirm Password",
          ),
          const SignWithFace(),
          Row(
            children: [
              Checkbox(
                fillColor: MaterialStateProperty.all(
                    const Color.fromRGBO(223, 187, 6, 1)),
                value: checkBoxValue,
                onChanged: (value) {
                  setState(() {
                    checkBoxValue = value!;
                  });
                },
              ),
              SizedBox(
                width: 290,
                height: 48,
                child: RichText(
                  text: const TextSpan(
                    text:
                        "I understand that DeGe cannot recover this password for me.  ",
                    style: TextStyle(
                      fontFamily: "Archivo",
                      height: 1.5,
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: "Learn more",
                        style: TextStyle(
                          fontFamily: "Archivo",
                          color: Color.fromRGBO(223, 187, 6, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
