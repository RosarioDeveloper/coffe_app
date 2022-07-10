// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:app1/config/app.dart';
import 'package:flutter/material.dart';

class Item {
  late String image;
  late String title;
  late double price;
}

class CoffeItem extends StatelessWidget {
  const CoffeItem({Key? key}) : super(key: key);

  /* final Item data;
  final List<Item> item = <Item>[]; */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: .45 * size.width,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: const Color(App.dark80),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Image
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'lib/assets/images/coffe1.jpeg',
              fit: BoxFit.cover,
              width: size.width,
              height: 140,
            ),
          ),

          SizedBox(height: 10),

          //Title and descriotion
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Capuccino', style: TextStyle(fontSize: 17)),
              SizedBox(height: 2),
              Text(
                'With Oat Milk',
                style: TextStyle(color: Color(App.dark50), fontSize: 12),
              ),
            ],
          ),

          SizedBox(height: 12),

          //Price and add button
          Container(
            //height: size.height * .08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //Price
                Row(
                  children: const [
                    Text(
                      '\$',
                      style: TextStyle(fontSize: 18, color: Color(App.primary)),
                    ),
                    Text(
                      ' 4.20',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                //Button add
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Color(App.primary),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 17,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
