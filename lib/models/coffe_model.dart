import 'package:flutter/material.dart';

class CoffeModel {
  String title;

  CoffeModel(this.title);

  factory CoffeModel.fromJson(Map<String, dynamic> json) {
    return CoffeModel(json['title']);
  }
}

//Factory CoffeModelItems
class CoffeModelItems {
  String image;
  String name;
  String price;
  String description;

  CoffeModelItems(
    this.image,
    this.name,
    this.price,
    this.description,
  );

  factory CoffeModelItems.fromJson(Map<String, dynamic> json) {
    return CoffeModelItems(
      json['image'],
      json['name'],
      json['price'],
      json['description'],
    );
  }
}
