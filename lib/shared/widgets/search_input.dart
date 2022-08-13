import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          //color: Colors.grey,
        ),
        hintText: 'Find your coffe',
      ),
    );
  }
}
