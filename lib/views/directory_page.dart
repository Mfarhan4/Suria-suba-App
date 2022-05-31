import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/themes/palette.dart';

import '../configer/screen_config.dart';
import '../widgets/company_name_widget.dart';

class DirectoryPage extends StatelessWidget {
  const DirectoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(children: [
          Container(color: Palette.color,


          ),

          Positioned.fill(
            top: ScreenConfig.topPadding,
            child: Container(

            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)),
              color: Colors.white,
            ),

           child: Column(children: [
             Container(
               width: ScreenConfig.screenWidth,
               decoration: const BoxDecoration(
                 borderRadius: BorderRadius.only(
                     topRight: Radius.circular(25),
                     topLeft: Radius.circular(25)),
                 color: Colors.white,
                 boxShadow: [
                   BoxShadow(
                       color: Colors.grey, //New
                       blurRadius: 5.0,
                       offset: Offset(0, 1))
                 ],
               ),
               child: Column(
                 children:  [
                    const SizedBox(
                     height: 9,
                   ),
                   CompanyName(
                     nameColor:Palette.color,
                     titleSize: 10,
                     nameSize: 35,
                     titleColor: Colors.black,
                   ),

                 ],

               ),

             ),

             Container(
               height: 220,
               width: ScreenConfig.screenWidth,
               child: Image.asset('assets/categories_background1.png', fit: BoxFit.cover,),
             ),






           ],),

          ),
          ),
          Positioned.fill(
              top: 130,
              child: SizedBox(
                width: ScreenConfig.screenWidth,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Container(
                    height: 10,
                    child: TextField(

                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 13.0),
                          filled: true,
                          hintText: "                     Search Keywords",
                          prefixIcon: Icon(Icons.search),
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(1))
                      ),
                    ),
                  ),
                ),
              )),
          Positioned.fill(
              top: 200,
              child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25) ),color: Colors.white),))


        ],),
      ),
    );
  }
}
