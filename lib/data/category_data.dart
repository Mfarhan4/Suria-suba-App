import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/models/category_model.dart';

import '../suba_icon_icons.dart';


class CategoryClass {

   static  List data=[
     {"name":"FASHION","icon":SubaIcon.fashion,'image':"assets/category/fashion.png",},
     {"name":"TIMEPIECE & JEWELLERY","icon":SubaIcon.watch_gem,"image":"assets/category/time.png",},
     {"name":"BEAUTY & WELLNESS","icon":SubaIcon.beauty,"image":"assets/category/beauty.png",},
     {"name":"LIFESTYLE","icon":SubaIcon.groceries,"image":"assets/category/lifestyle.png",},

{"name":"CHILDREN & MATERNITY","icon":SubaIcon.toy,"image":"assets/category/children.png",},
{"name":"SPORTS & OUTDOORS","icon":SubaIcon.sports,"image":"assets/category/sports.png",},
{"name":"IT & TELECOMMUNICATION","icon":SubaIcon.devices,"image":"assets/category/it.png",},
{"name":"FOOD & BEVERAGE","icon":SubaIcon.food,"image":"assets/category/food.png",},
{"name":"GIFT & SOUVENIR","icon":SubaIcon.gift,"image":"assets/category/gifts.png",},
{"name":"GROCERY","icon":SubaIcon.groceries,"image":"assets/category/grocery.png",},
{"name":"ENTERTAINMENT","icon":SubaIcon.entertainment,"image":"assets/category/entertainment.png",},
{"name":"DEPARTMENT STORE","icon":SubaIcon.cart,"image":"assets/category/cart.png",},




   ];


   static List<Category> dataList =data.map((e) => Category.fromJson(e)).toList();




}