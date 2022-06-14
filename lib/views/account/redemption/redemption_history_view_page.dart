import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/views/directory/store_location_page.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';
import 'package:suria_saba_app/widgets/custom_button_widget.dart';
import 'package:suria_saba_app/widgets/scanner_widget.dart';

class RedemptionHistoryViewPage extends StatefulWidget {
  const RedemptionHistoryViewPage({Key? key}) : super(key: key);

  @override
  State<RedemptionHistoryViewPage> createState() => _RedemptionHistoryViewPageState();
}

class _RedemptionHistoryViewPageState extends State<RedemptionHistoryViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        enableBackButton: true,
      ),
      body: Container(
        //  height: ScreenConfig.screenHeight,
        width: ScreenConfig.screenWidth,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/voucher_background.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:ScreenConfig.safeHeight * 50,
                width: ScreenConfig.safeHeight * 50,
                decoration: BoxDecoration(


                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink[300]!.withOpacity(0.4),
                      offset: const Offset(3, 3.5),
                      blurRadius: 5,
                    )
                  ],
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network("https://media.istockphoto.com/photos/woman-holding-sale-shopping-bags-consumerism-shopping-lifestyle-picture-id1254508881?k=20&m=1254508881&s=612x612&w=0&h=d6KO9oMB3cMLGSFEu5GoGbYX0RpkHSEoUCARo7UagTI=",fit: BoxFit.cover,)),),
            ),
            const SizedBox(height: 20,),
            const Text("Water Bottle",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800,),),
            const Text("100 points",),
            const Expanded(child: Divider(color: Colors.white,)),
            SizedBox(
                height: 45,
                width: ScreenConfig.blockWidth * 62,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              // spreadRadius: 2,
                              blurRadius: 3.5,
                             // offset: const Offset(4, 3.5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) =>ScannerWidget() ));

                          },
                          child: SizedBox(
                              height: 60,
                              width: 80,
                              child: FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0,right: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                     // SizedBox(child : icon!= null ?Icon(icon,color: Colors.white,): const SizedBox()),
                                      SizedBox(width: 5,),
                                      Text(
                                        "Redeemed  06/06/2022",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                    ),

            ),
            SizedBox(height: 10,),

          ],),
      ),
    );
  }
}