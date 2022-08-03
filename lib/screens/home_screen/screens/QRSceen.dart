import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: Container(
            decoration: BoxDecoration(
              //you can get rid of below line also
              borderRadius: BorderRadius.circular(10.0),
              //below line is for rectangular shape
              shape: BoxShape.rectangle,
              //you can change opacity with color here(I used black) for rect
              color: Colors.black.withOpacity(0.5),
              //I added some shadow, but you can remove boxShadow also.
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 200),
                QrImage(
                  data: "https://www.google.com",
                  size: 200,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 70),
                const Text(
                  "Scanning...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
