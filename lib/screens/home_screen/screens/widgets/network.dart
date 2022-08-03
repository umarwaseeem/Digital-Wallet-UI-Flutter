// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Network {
  String name;
  Color color;
  bool selected;
  Network({
    required this.name,
    required this.color,
    required this.selected,
  });
}

class NetworkProvider extends ChangeNotifier{

  List<Network> networks = [
    Network(
      name: "Ethereum Main",
      color: Colors.blue,
      selected: false,
    ),
    Network(
      name: "Ropsten Test",
      color: Colors.red,
      selected: true,
    ),
    Network(
      name: "Koven Test",
      color: Colors.yellow,
      selected: false,
    ),
    Network(
      name: "Goerli Test",
      color: Colors.green,
      selected: false,
    ),
  ];

  Network getSelectedNetwork() {
    return networks.firstWhere((element) => element.selected);
  }

  List<Network> getUnselectedNetworks(){
    return networks.where((element) => !element.selected).toList();
  }

  void selectNetwork(String title){

    String alreadySelectedNetworkName = networks.firstWhere((element) => element.selected).name;

    if (title == alreadySelectedNetworkName) {
      return;
    } else if (title != alreadySelectedNetworkName) {
        for (var element in networks) {
          if (element.name == title) {
            element.selected = true;
          } else {
            element.selected = false;
          }
        }
        notifyListeners();
    }
  }
  
}

