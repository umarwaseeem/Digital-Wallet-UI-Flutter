import 'package:flutter/material.dart';

class AppListItem extends StatelessWidget {
  const AppListItem(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.description})
      : super(key: key);

  final String imagePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: "Popins",
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: "Popins",
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
