import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:leew_wallet/screens/home_screen/screens/widgets/network_provider.dart';
import 'package:provider/provider.dart';

class NetworkTile extends StatefulWidget {
  const NetworkTile({
    Key? key,
    required this.title,
    required this.leadingColor,
    required this.selected,
  }) : super(key: key);

  final String title;
  final Color leadingColor;
  final bool selected;

  @override
  State<NetworkTile> createState() => _NetworkTileState();
}

class _NetworkTileState extends State<NetworkTile> {
  @override
  Widget build(BuildContext context) {
    final networkData = Provider.of<NetworkProvider>(context);

    return ListTile(
      onTap: () {
        networkData.selectNetwork(widget.title);
        Navigator.pop(context);

        // show alert dialog with "${widget.title} selected"
        showDialog(
          context: context,
          builder: (context) {
            Future.delayed(const Duration(seconds: 1), () {
              Navigator.of(context).pop(true);
            });
            return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: AlertDialog(
                backgroundColor: Colors.black87,
                title: Text("${widget.title} selected",
                    style: const TextStyle(color: Colors.white)),
              ),
            );
          },
        );
      },
      leading: CircleAvatar(
        backgroundColor: widget.leadingColor,
        radius: 8,
      ),
      trailing: widget.selected
          ? const Icon(
              Icons.check_circle_outlined,
              color: Colors.green,
            )
          : null,
      title: Text(
        widget.title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
