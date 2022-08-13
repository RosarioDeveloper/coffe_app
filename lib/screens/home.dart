// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:app1/shared/theme.dart';
import 'package:app1/screens/coffe/coffe_list.dart';
import 'package:app1/shared/widgets/adds.dart';

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
        leading: Container(
          //padding: EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Icon(Icons.grid_view_rounded),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: App.padding),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/user_avatar.jpeg',
              ),
            ),
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
                  'Find the best \ncoffee for you',
                  style: TextStyle(fontSize: 37),
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

          //Body views
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: [
                //Coffe List
                Container(
                  alignment: Alignment.topLeft,
                  height: 320,
                  child: CoffeList(),
                ),

                //Adds area
                AddsWidget(),
                SizedBox(height: 10),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
