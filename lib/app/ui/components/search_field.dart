import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search_outlined,
              size: 32,
            ),
            hintText: "Find whatever you need",
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30.0),
            )),
      ),
    );
  }
}
