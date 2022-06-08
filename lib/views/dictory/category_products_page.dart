import 'package:flutter/material.dart';
import 'package:suria_saba_app/views/dictory/product_view_page.dart';
import 'package:suria_saba_app/widgets/custom_appBar.dart';
import 'package:suria_saba_app/widgets/products_widget/dictory_products_widget.dart';

import '../../configer/screen_config.dart';
import '../../themes/palette.dart';
import '../../widgets/company_name_widget.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(enableBackButton: true,),
      body: Container(
        height: ScreenConfig.blockHeight * 80,
        color: Colors.white,
        child:
        Stack(
          children: [
            Container(color: Colors.brown.shade50,),

            SizedBox(
        height: ScreenConfig.blockHeight * 35,
              width: ScreenConfig.screenWidth,
              child: Image.asset(
                'assets/images/categories_background1.png',
                fit: BoxFit.cover,
              ),
            ),


            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18),
                child: Column(
                  children: [


                    Container(
                      height: ScreenConfig.blockHeight * 11,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Fashion",
                            style: TextStyle(
                                color: Palette.color,
                                fontSize: 33,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15,),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenConfig.blockHeight*65,
                      width: ScreenConfig.blockHeight * 65,
                      child: GridView.builder(
                          itemCount: 20,
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 2.4/4,
                          ),
                          itemBuilder: (context, index) {
                            return
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_) => const ProductViewPage()));
                                  },

                                  child: const DictoryProductsWidget());
                          })
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
