import 'package:flutter/material.dart';

class TokenInfoTile extends StatelessWidget {
  const TokenInfoTile(
      {Key? key,
      required this.coinName,
      required this.coinSymbol,
      required this.coinAmount,
      required this.dollars,
      required this.percentage})
      : super(key: key);

  final String coinName;
  final String coinSymbol;
  final String coinAmount;
  final String dollars;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.transparent,
          child: Image.asset(coinSymbol),
        ),
        title: Text(
          coinName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Row(
          children: [
            Text(dollars, style: const TextStyle(color: Colors.grey)),
            const SizedBox(width: 10),
            Text(percentage, style: const TextStyle(color: Colors.green)),
          ],
        ),
        trailing: Text(coinAmount, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
