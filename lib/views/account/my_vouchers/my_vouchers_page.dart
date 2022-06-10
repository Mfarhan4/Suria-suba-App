
import 'package:flutter/material.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/views/account/redemption/redemption_product_view_page.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';

import '../../../configer/screen_config.dart';
import '../../../themes/palette.dart';
import '../../../widgets/products_widget/voucher_products_widget.dart';
import 'my_vouchers_product_view_page.dart';

class MyVouchersPage extends StatelessWidget {
  const MyVouchersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(enableBackButton: true,),
        body: Container(

          width: ScreenConfig.screenWidth,
          height: ScreenConfig.blockHeight * 81,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/voucher_background.png"),
              fit: BoxFit.cover,


            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 22.0,right: 22),
            child: Column(children: [
              SizedBox(
                height: ScreenConfig.blockHeight * 10,
                child: FittedBox(
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          //  SizedBox(width: ScreenConfig.blockWidth * 30,),
                          Text("MY VOUCHERS",style: TextStyle(color: Palette.color,fontWeight: FontWeight.w900,fontSize: 22),) ,

                        ],),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ScreenConfig.blockHeight * 66,
                child:  GridView.builder(
                    itemCount: 12,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 3.0 / 4,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(child:  InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_) => const MyVouchersProductViewPage()));
                            },
                            child: const VoucherProductsWidget(text1: 'Whoosh', image: 'https://thumbs.dreamstime.com/b/woman-wearing-medical-mask-holding-credit-card-shopping-mall-prevention-coronavirus-covid-pandemic-new-young-185983506.jpg', text2: '15% OFF e-voucher',))),
                      );
                    }),

              )




            ],),
          ),

        ));
  }
}
