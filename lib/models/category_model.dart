import 'package:flutter/cupertino.dart';

class Category {
  IconData icon;
  String name;
  String image;
  Category({ required this.icon,required this.name ,required this.image});
  factory Category.fromJson(Map<String, dynamic> map){
    return Category(icon: map["icon"], name: map["name"], image: map["image"]);
  }
}