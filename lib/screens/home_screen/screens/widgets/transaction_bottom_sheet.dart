import 'package:flutter/material.dart';

void showTransactionBottomSheet(
  BuildContext context,
  String transactionType,
  double transactionAmount,
  double dollarAmount,
  String tokenAbbreviation,
  bool status,
  String dateAndTime,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: const Color.fromRGBO(8, 10, 12, 1),
    builder: (context) {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "$transactionType $tokenAbbreviation ",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Status",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    "On",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),
            ListTile(
              title: status
                  ? const Text(
                      "Confirmed",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  : const Text(
                      "Cancellled",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              trailing: Text(
                dateAndTime,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "From",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    "To",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                "0x123..324sfdd",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              trailing: Text(
                "0x123..324sfdd",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Nonce",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                "#0",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total Amount",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        transactionAmount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "\$ $dollarAmount",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("View On Mainnet"),
            ),
          ],
        ),
      );
    },
  );
}
