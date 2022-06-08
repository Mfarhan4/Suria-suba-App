import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/models/category_model.dart';

import '../suba_icon_icons.dart';


class CategoryClass {

   static  List data=[
     {"name":"FASHION","icon":SubaIcon.fashion,'image':"assets/images/category/fashion.png",},
     {"name":"TIMEPIECE & JEWELLERY","icon":SubaIcon.watch_gem,"image":"assets/images/category/time.png",},
     {"name":"BEAUTY & WELLNESS","icon":SubaIcon.beauty,"image":"assets/images/category/beauty.png",},
     {"name":"LIFESTYLE","icon":SubaIcon.groceries,"image":"assets/images/category/lifestyle.png",},

{"name":"CHILDREN & MATERNITY","icon":SubaIcon.toy,"image":"assets/images/category/children.png",},
{"name":"SPORTS & OUTDOORS","icon":SubaIcon.sports,"image":"assets/images/category/sports.png",},
{"name":"IT & TELECOMMUNICATION","icon":SubaIcon.devices,"image":"assets/images/category/it.png",},
{"name":"FOOD & BEVERAGE","icon":SubaIcon.food,"image":"assets/images/category/food.png",},
{"name":"GIFT & SOUVENIR","icon":SubaIcon.gifts,"image":"assets/images/category/gifts.png",},
{"name":"GROCERY","icon":SubaIcon.groceries,"image":"assets/images/category/grocery.png",},
{"name":"ENTERTAINMENT","icon":SubaIcon.entertainment,"image":"assets/images/category/entertainment.png",},
{"name":"DEPARTMENT STORE","icon":SubaIcon.cart,"image":"assets/images/category/cart.png",},




   ];


   static List<Category> dataList =data.map((e) => Category.fromJson(e)).toList();




}