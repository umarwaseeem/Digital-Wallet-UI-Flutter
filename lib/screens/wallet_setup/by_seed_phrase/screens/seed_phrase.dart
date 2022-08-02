import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/home_screen/home_screen.dart';

import '../../../../util/button.dart';
import 'widgets/input_field.dart';
import 'widgets/switch_button.dart';
import 'widgets/terms_text.dart';

class SeedPhrase extends StatefulWidget {
  const SeedPhrase({Key? key}) : super(key: key);

  static const routeName = "seed phrase";

  @override
  State<SeedPhrase> createState() => _SeedPhraseState();
}

class _SeedPhraseState extends State<SeedPhrase> {
  bool isSwitch = false;
  bool buttonEnabled = false;

  final TextEditingController _seedPhraseController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _referralCodeController = TextEditingController();

  @override
  void initState() {
    _seedPhraseController.text = "";
    _passwordController.text = "";
    _confirmPassword.text = "";
    _referralCodeController.text = "";

    _confirmPassword.addListener(() {
      setState(() {
        buttonEnabled = _formKey.currentState!.validate();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _seedPhraseController.dispose();
    _passwordController.dispose();
    _confirmPassword.dispose();
    _referralCodeController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Color disabledButtonColor = const Color.fromRGBO(16, 20, 25, 1);
    Color enabledButtonColor = const Color.fromRGBO(223, 187, 6, 1);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Import From Seed "),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Container(
                margin: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    Container(
                      margin: const EdgeInsets.only(right: 50),
                      child: InputField(
                        validate: (value) {
                          if (value.isEmpty) {
                            return "Please enter seed phrase";
                          }
                          return null;
                        },
                        controller: _seedPhraseController,
                        maxLines: 4,
                        minLines: 1,
                        hintText: "Seed Phrase",
                      ),
                    ),
                    const SizedBox(height: 24),
                    InputField(
                      validate: (value) {
                        if (value.isEmpty) {
                          return "Please enter password";
                        } else if (value.length < 8) {
                          return "Password must be at least 8 characters";
                        }
                        return null;
                      },
                      controller: _passwordController,
                      maxLines: 1,
                      minLines: 1,
                      hintText: "New Password",
                    ),
                    const SizedBox(height: 24),
                    InputField(
                      validate: (value) {
                        if (value.isEmpty) {
                          return "Please confirm password";
                        } else if (value != _passwordController.text) {
                          return "Passwords do not match";
                        }
                        return null;
                      },
                      controller: _confirmPassword,
                      maxLines: 1,
                      minLines: 1,
                      hintText: "Confirm Password",
                    ),
                    const SizedBox(height: 4),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "Must be at least 8 characters",
                        style:
                            TextStyle(color: Color.fromRGBO(106, 132, 160, 1)),
                      ),
                    ),
                    const SizedBox(height: 24),
                    InputField(
                      validate: null,
                      controller: _referralCodeController,
                      maxLines: 1,
                      minLines: 1,
                      hintText: "Referral Code (Optional)",
                    ),
                    const SizedBox(height: 36),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
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
                          SwitchButton(isSwitch: isSwitch),
                        ],
                      ),
                    ),
                    const SizedBox(height: 36),
                    const TermsText(),
                    const SizedBox(height: 90),
                    Center(
                      child: Button(
                        text: "Import",
                        textColor: buttonEnabled
                            ? Colors.white
                            : const Color.fromRGBO(56, 70, 87, 1),
                        onPressed: buttonEnabled
                            ? () {
                                Navigator.pushReplacementNamed(
                                    context, HomeScreen.routeName);
                              }
                            : null,
                        buttonColor: buttonEnabled
                            ? enabledButtonColor
                            : disabledButtonColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

