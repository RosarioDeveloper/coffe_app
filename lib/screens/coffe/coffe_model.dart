import 'package:flutter/material.dart';

class CoffeModel {
  String category;
  List<CoffeModelItem> items;

  CoffeModel(this.category, this.items);

  factory CoffeModel.fromJson(Map<String, dynamic> json) {
    //print(json);
    return CoffeModel(
      json['category'],

      //Setting coffe items
      List<CoffeModelItem>.from(
        json['items'].map(
          (item) => CoffeModelItem.fromJson(item),
        ),
      ),
    );
  }
}

//Factory CoffeModelItems
class CoffeModelItem {
  String image;
  String name;
  double price;
  String description;

  CoffeModelItem(
    this.image,
    this.name,
    this.price,
    this.description,
  );

  factory CoffeModelItem.fromJson(Map<String, dynamic> json) {
    return CoffeModelItem(
      json['image'],
      json['name'],
      json['price'],
      json['description'],
    );
  }
}
