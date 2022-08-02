import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.account_circle,
            color: Colors.black,
          ),
        ),
        Positioned(
          bottom: -5,
          right: -5,
          child: Icon(
            Icons.swap_horiz_rounded,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
