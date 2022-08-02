import 'package:flutter/material.dart';

class TermsText extends StatelessWidget {
  const TermsText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: RichText(
        text: const TextSpan(
          text: "By clicking “Continue”, you agree to the ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
              text: "Terms and Conditions.",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
