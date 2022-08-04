import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/home_screen/screens/widgets/transaction_item_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/chips.dart';

class TokenDetailScreen extends StatelessWidget {
  const TokenDetailScreen(
      {Key? key,
      required this.tokenName,
      required this.tokenAbbreviation,
      required this.dollarsAmount,
      required this.mainAmount,
      required this.percentage})
      : super(key: key);

  final String tokenName;
  final String tokenAbbreviation;
  final double dollarsAmount;
  final double mainAmount;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    bool showReceivedOnly = false;
    bool showSentOnly = false;

    final transactionProviderData = Provider.of<TransactionProvider>(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(66, 22, 21, 1),
                Color.fromRGBO(8, 10, 12, 1),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 110),
                    Text(
                      tokenName,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                Text(
                  "$mainAmount $tokenAbbreviation",
                  style: const TextStyle(color: Colors.blue, fontSize: 45),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$ $dollarsAmount",
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "$percentage %",
                      style: TextStyle(
                          color: percentage > 0 ? Colors.green : Colors.red,
                          fontSize: 18),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ChipWidget(icon: Icons.send, title: "Sent"),
                    SizedBox(width: 15),
                    ChipWidget(icon: Icons.receipt, title: "Received"),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Token",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    // SizedBox
                    Text(
                      "Collectibles",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 40, right: 10, left: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: transactionProviderData
                          .getByAbbreviation(tokenAbbreviation)
                          .length,
                      itemBuilder: (context, index) {
                        return transactionProviderData
                            .getByAbbreviation(tokenAbbreviation)[index];
                      },
                    ),
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
