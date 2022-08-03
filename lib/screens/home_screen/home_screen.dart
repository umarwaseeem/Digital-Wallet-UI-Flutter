import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/home_screen/screens/wallet_screen.dart';

import 'screens/dapps_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/swap_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) => setState(() {
            _currentIndex = index;
          }),
          elevation: 10,
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.yellow,
          backgroundColor: const Color.fromRGBO(8, 10, 12, 1),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_sharp),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horizontal_circle),
              label: "Swap",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps_rounded),
              label: "DApps",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: const [
            WalletScreen(),
            SwapScreen(),
            DAppScreen(),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}
