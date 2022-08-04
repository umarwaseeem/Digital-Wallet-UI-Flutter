import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.transactionType,
    required this.transactionAmount,
    required this.dollarAmount,
    required this.tokenAbbreviation,
    required this.status,
    required this.dateAndTime,
  }) : super(key: key);

  final String transactionType;
  final double transactionAmount;
  final double dollarAmount;
  final String tokenAbbreviation;
  final bool status; // true = confirmed, false = cancelled, pending
  final String dateAndTime;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListTile(
          title: Text(
            transactionType,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          leading: Icon(
            transactionType == "Sent" ? Icons.send : Icons.wallet,
            color: Colors.white,
            size: 30,
          ),
          trailing: Container(
            margin: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$transactionAmount $tokenAbbreviation",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "\$ $dollarAmount",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          subtitle: status
              ? const Text(
                  "Confirmed",
                  style: TextStyle(color: Colors.green),
                )
              : const Text(
                  "Cancelled",
                  style: TextStyle(color: Colors.red),
                ),
        ),
      ),
    );
  }
}

class TransactionProvider extends ChangeNotifier {
  final List<TransactionItem> _transactions = [
    const TransactionItem(
      transactionType: "Sent",
      transactionAmount: 0.5,
      dollarAmount: 0.5,
      tokenAbbreviation: "BTC",
      status: true,
      dateAndTime: "2020-01-01 12:00:00",
    ),
    const TransactionItem(
      transactionType: "Recieved",
      transactionAmount: 0.5,
      dollarAmount: 0.5,
      tokenAbbreviation: "BTC",
      status: false,
      dateAndTime: "2020-01-01 12:00:00",
    ),
    const TransactionItem(
      transactionType: "Received",
      transactionAmount: 0.5,
      dollarAmount: 0.5,
      tokenAbbreviation: "ETH",
      status: true,
      dateAndTime: "2020-01-01 12:00:00",
    ),
    const TransactionItem(
      transactionType: "Sent",
      transactionAmount: 0.5,
      dollarAmount: 0.5,
      tokenAbbreviation: "ETH",
      status: false,
      dateAndTime: "2020-01-01 12:00:00",
    ),
    const TransactionItem(
      transactionType: "Sent",
      transactionAmount: 0.5,
      dollarAmount: 0.5,
      // Dodgecoin tokenAbbreviation
      tokenAbbreviation: "LTC",
      status: true,
      dateAndTime: "2020-01-01 12:00:00",
    ),
    const TransactionItem(
      transactionType: "Received",
      transactionAmount: 0.5,
      dollarAmount: 0.5,
      // Dodgecoin tokenAbbreviation
      tokenAbbreviation: "LTC",
      status: false,
      dateAndTime: "2020-01-01 12:00:00",
    ),
    const TransactionItem(
      transactionType: "Received",
      transactionAmount: 0.5,
      dollarAmount: 0.5,
      tokenAbbreviation: "DGC",
      status: true,
      dateAndTime: "2020-01-01 12:00:00",
    ),
    const TransactionItem(
      transactionType: "Sent",
      transactionAmount: 0.5,
      dollarAmount: 0.5,
      tokenAbbreviation: "DGC",
      status: false,
      dateAndTime: "2020-01-01 12:00:00",
    ),
  ];

  // get transactions by tokenAbbreviation

  List<TransactionItem> getByAbbreviation(String abbreviation) {
    return _transactions
        .where((element) => element.tokenAbbreviation == abbreviation)
        .toList();
  }

  bool showReceivedOnly = false;
  bool showSentOnly = false;

  void toggleShowReceivedOnly() {
    if (showReceivedOnly) {
      showReceivedOnly = false;
    } else {
      showReceivedOnly = true;
      showSentOnly = false;
    }

    notifyListeners();
  }

  void toggleShowSentOnly() {
    if (showSentOnly) {
      showSentOnly = false;
    } else {
      showSentOnly = true;
      showReceivedOnly = false;
    }

    notifyListeners();
  }

  bool getReceivedOnlyStatus() {
    return showReceivedOnly == true && showSentOnly == false;
  }

  bool getSentOnlyStatus() {
    return showSentOnly == true && showReceivedOnly == false;
  }
}
