import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/home_screen/screens/widgets/token_info_tile.dart';

import '../widgets/chips.dart';
import '../widgets/profile_picture.dart';
import '../widgets/text_with_button.dart';
import 'widgets/account_bottom_sheet.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(width: 20),
                GestureDetector(
                  child: const ProfilePicture(),
                  onTap: () {
                    accountBottomSheet(context);
                  },
                ),
                const SizedBox(width: 95),
                const TextWithButton(),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              "9.2632 ETH",
              style: TextStyle(color: Colors.blue, fontSize: 45),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "\$ 16,858.15",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: 10),
                Text(
                  "+0.7%",
                  style: TextStyle(color: Colors.green, fontSize: 18),
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
                SizedBox(width: 15),
                ChipWidget(icon: Icons.money, title: "Buy"),
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
                margin: const EdgeInsets.only(bottom: 40, right: 10, left: 10),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const TokenInfoTile(
                      coinName: "Binance Coin",
                      coinSymbol: "assets/images/image4.png",
                      coinAmount: "19.2371 BNB",
                      dollars: "\$226.69",
                      percentage: "+2%",
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 50, left: 50, bottom: 10),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.add, color: Colors.blue),
                    Text(
                      "Add Tokens",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
