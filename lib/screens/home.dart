// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:app1/config/app.dart';
import 'package:app1/widgets/coffe/list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: App.padding),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '')
        ],
      ),
      body: Container(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: App.padding),
            child: Column(children: [
              SizedBox(height: 20),

              //Best coofe
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Find the Best coffe for you',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.start,
                ),
              ),

              SizedBox(height: 20),

              //Search input
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your coffe',
                ),
              ),
            ]),
          ),
          SizedBox(height: 25),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                CoffeList(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}