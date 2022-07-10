import 'package:app1/config/app.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
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
