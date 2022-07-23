import 'package:flutter/material.dart';

class CoffeModel {
  String title;

  CoffeModel(this.title);

  factory CoffeModel.fromJson(Map<String, dynamic> json) {
    return CoffeModel(json['title']);
  }
}

//Factory CoffeModelItems
class CoffeModelItem {
  String image;
  String name;
  String price;
  String description;

  CoffeModelItem(
    this.image,
    this.name,
    this.price,
    this.description,
  );

  factory CoffeModelItem.fromJson(Map<String, dynamic> json) {
    return CoffeModelItem(
      json['images'],
      json['name'],
      json['price'].toString(),
      json['description'],
    );
  }
}
