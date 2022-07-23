// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, must_be_immutable

import 'package:app1/controller/coffe_controller.dart';
import 'package:app1/models/coffe_model.dart';
import 'package:app1/shared/colors.dart';
import 'package:app1/widgets/coffe/item.dart';
import 'package:flutter/material.dart';

class CoffeList extends StatelessWidget {
  CoffeController _coffeController = CoffeController();

  CoffeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _coffeController.coffeList.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            automaticIndicatorColorAdjustment: true,
            //indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: AppColors.primary,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: AppColors.primary,
                width: 2,
              ),
              insets: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 8,
              ),
            ),
            labelStyle: TextStyle(color: Colors.red),
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.dark30,
            tabs: _coffeController.coffeList.map((item) {
              return Tab(
                text: item['title'],
              );
            }).toList(),
          ),
          SizedBox(height: 5),
          Expanded(
            child: TabBarView(
              children: [
                for (final item in _coffeController.coffeList)
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: item['items'].length,
                    itemBuilder: (context, index) {
                      return CoffeItem(
                        coffe: CoffeModelItem.fromJson(
                          item['items'][index],
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
