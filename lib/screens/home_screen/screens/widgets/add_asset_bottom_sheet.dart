import 'package:flutter/material.dart';

Future<dynamic> addAssetBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: const Color.fromRGBO(8, 10, 12, 1),
    context: context,
    builder: (context) {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Add Asset",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
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

            const SizedBox(height: 20),
            // search bar

            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.blueGrey.withOpacity(0.8),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.blueGrey.withOpacity(0.2),
                    width: 2.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  AssetTile(
                    title: "Binance Coin",
                    abbreviation: "BNB",
                    image: "assets/images/image2.png",
                    selected: true,
                  ),
                  AssetTile(
                    title: "Ethereum Coin",
                    abbreviation: "ETH",
                    image: "assets/images/image3.png",
                    selected: false,
                  ),
                  AssetTile(
                    title: "Lite Coin",
                    abbreviation: "LTC",
                    image: "assets/images/image4.png",
                    selected: false,
                  ),
                  AssetTile(
                    title: "Binance Coin",
                    abbreviation: "BNB",
                    image: "assets/images/tick.png",
                    selected: false,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}

class AssetTile extends StatelessWidget {
  const AssetTile({
    Key? key,
    required this.title,
    required this.abbreviation,
    required this.image,
    required this.selected,
  }) : super(key: key);

  final String title;
  final String abbreviation;
  final String image;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: ListTile(
        trailing: selected
            ? const Icon(Icons.check_circle_outlined, color: Colors.yellow)
            : null,
        leading: CircleAvatar(child: Image.asset(image)),
        title: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              abbreviation,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
