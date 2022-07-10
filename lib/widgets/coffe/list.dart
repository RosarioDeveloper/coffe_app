// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:app1/widgets/coffe/item.dart';
import 'package:flutter/material.dart';

class CoffeList extends StatelessWidget {
  const CoffeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    final data = [
      {'image': '', 'title': 'Cappucino', 'price': 4.20},
      {'image': '', 'title': 'Cappucino', 'price': 4.20},
      {'image': '', 'title': 'Cappucino', 'price': 4.20},
      {'image': '', 'title': 'Cappucino', 'price': 4.20},
    ];

    return Container(
      height: 255,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return CoffeItem();
        },
      ),
    );
  }
}
