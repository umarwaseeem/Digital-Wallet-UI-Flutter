import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return TextFormField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Colors.yellow,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: Colors.blueGrey.withOpacity(0.8),
            width: 2.0,
          ),
        ),
        hintText: "Search Or Enter Website URL",
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(106, 132, 160, 1),
        ),
      ),
    );
  }
}
