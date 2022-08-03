import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  const AccountTile(
      {Key? key,
      required this.userName,
      required this.userImage,
      required this.userBalance})
      : super(key: key);

  final String userName;
  final String userImage;
  final String userBalance;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        userName,
        style: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
      leading: const CircleAvatar(
        radius: 20,
        backgroundColor: Colors.red,
        // child: Image.asset(userImage),
      ),
      subtitle: Text(
        userBalance,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
