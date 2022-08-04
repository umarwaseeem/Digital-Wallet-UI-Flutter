import 'package:flutter/material.dart';

import '../token_detail_screen.dart';

class TokenInfoTile extends StatelessWidget {
  const TokenInfoTile(
      {Key? key,
      required this.coinName,
      required this.coinSymbol,
      required this.coinAmount,
      required this.dollars,
      required this.percentage,
      required this.tokenAbbreviation})
      : super(key: key);

  final String coinName;
  final String coinSymbol;
  final double coinAmount;
  final double dollars;
  final double percentage;
  final String tokenAbbreviation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return TokenDetailScreen(
                  tokenName: coinName,
                  tokenAbbreviation: tokenAbbreviation,
                  dollarsAmount: dollars,
                  mainAmount: coinAmount,
                  percentage: percentage,
                );
              },
            ),
          );
        },
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
              Text("\$ $dollars", style: const TextStyle(color: Colors.white)),
              const SizedBox(width: 10),
              Text(
                "$percentage %",
                style: TextStyle(
                    color: percentage > 0 ? Colors.green : Colors.red),
              ),
            ],
          ),
          trailing: Text(coinAmount.toString(),
              style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

class TokenProvider extends ChangeNotifier {
  List<TokenInfoTile> tokens = [
    const TokenInfoTile(
      coinName: "Bitcoin",
      tokenAbbreviation: "BTC",
      coinSymbol: "assets/images/image1.png",
      coinAmount: 0.00987,
      dollars: 234.4345,
      percentage: -23,
    ),
    const TokenInfoTile(
      coinName: "Ethereum",
      tokenAbbreviation: "ETH",
      coinSymbol: "assets/images/image2.png",
      coinAmount: 9.47,
      dollars: 12,
      percentage: 5,
    ),
    const TokenInfoTile(
      coinName: "Litecoin",
      tokenAbbreviation: "LTC",
      coinSymbol: "assets/images/image3.png",
      coinAmount: 23,
      dollars: 87.34,
      percentage: 22,
    ),
    const TokenInfoTile(
      coinName: "Dodgecoin",
      tokenAbbreviation: "DGC",
      coinSymbol: "assets/images/image4.png",
      coinAmount: 12.4536,
      dollars: 123,
      percentage: 34,
    ),
  ];

  void addToken(String name, String coinSymbol, String image, double amount,
      double dollarsAmount, double percent, String abbreviation) {
    tokens.add(
      TokenInfoTile(
        tokenAbbreviation: abbreviation,
        coinName: name,
        coinSymbol: image,
        coinAmount: amount,
        dollars: dollarsAmount,
        percentage: percent,
      ),
    );
    notifyListeners();
  }

  List<TokenInfoTile> getTokens() {
    return tokens;
  }
}
