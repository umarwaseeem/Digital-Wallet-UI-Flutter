import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "home";

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Home Screen',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        // bottomSheet: TabBar(
        //   tabs: [
        //     Tab(
        //       text: 'Tab 1',
        //     ),
        //     Tab(
        //       text: 'Tab 2',
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
