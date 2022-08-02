import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/home_screen/screens/widgets/app_list_item.dart';
import 'package:leew_wallet/screens/home_screen/screens/widgets/search_bar.dart';

class DAppScreen extends StatelessWidget {
  const DAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(8, 10, 12, 1),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SearchBar(),
          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const AppListItem(
                  title: "DApp",
                  description: "This is a D App",
                  imagePath: "assets/images/image2.png",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
