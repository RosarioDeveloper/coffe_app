// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:app1/config/app.dart';
import 'package:app1/models/coffe_model.dart';
import 'package:flutter/material.dart';

class Item {
  late String image;
  late String title;
  late double price;
}

class CoffeItem extends StatelessWidget {
  CoffeModelItem coffe;
  CoffeItem({Key? key, required this.coffe}) : super(key: key);

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
              'lib/assets/images/${coffe.image}',
              fit: BoxFit.cover,
              width: size.width,
              height: 140,
            ),
          ),

          SizedBox(height: 10),

          //Title and descriotion
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(coffe.name, style: TextStyle(fontSize: 17)),
              SizedBox(height: 2),
              Text(
                coffe.description,
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
                  children: [
                    Text(
                      '\$ ',
                      style: TextStyle(fontSize: 18, color: Color(App.primary)),
                    ),
                    Text(
                      coffe.price,
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
