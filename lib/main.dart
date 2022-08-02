import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/home_screen/home_screen.dart';

import 'screens/walkthrough_screens/walkthrough.dart';
import 'screens/wallet_setup/by_seed_phrase/screens/seed_phrase.dart';
import 'screens/wallet_setup/wallet_setup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leew Wallet',
      home: const Walkthrough(),
      theme: ThemeData(
        fontFamily: "Archivo",
        scaffoldBackgroundColor: const Color.fromRGBO(8, 10, 12, 1),
        appBarTheme: const AppBarTheme(
          color: Color.fromRGBO(8, 10, 12, 1),
          elevation: 0,
        ),
      ),
      routes: {
        WalletSetup.routeName: (context) => const WalletSetup(),
        SeedPhrase.routeName: (context) => const SeedPhrase(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
