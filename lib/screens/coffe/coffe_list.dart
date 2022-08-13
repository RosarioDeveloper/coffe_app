// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, must_be_immutable

import 'package:app1/screens/coffe/coffe_model.dart';
import 'package:app1/screens/coffe/coffe_controller.dart';
import 'package:app1/screens/coffe/widget/coffe_item_widget.dart';
import 'package:app1/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoffeList extends StatefulWidget {
  CoffeList({Key? key}) : super(key: key);

  @override
  State<CoffeList> createState() => _CoffeListState();
}

class _CoffeListState extends State<CoffeList> {
  final _coffeController = CoffeController();
  late List<CoffeModel> _coffeList = [];
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;

    _coffeController.list().then((data) {
      setState(() {
        _loading = false;
        _coffeList = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    if (_loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return DefaultTabController(
      length: _coffeList.length,
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
            tabs: _coffeList.map((item) {
              return Tab(text: item.category);
            }).toList(),
          ),
          SizedBox(height: 5),
          Expanded(
            child: TabBarView(
              children: [
                for (final coffe in _coffeList)
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffe.items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: CoffeItem(
                          coffe: coffe.items[index],
                        ),
                        onTap: () {
                          GoRouter.of(context).go(
                            '/coffe/details',
                            extra: {'data': coffe.items[index]},
                          );
                        },
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
