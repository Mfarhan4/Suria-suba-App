import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/views/dictory/store_location_page.dart';
import 'package:suria_saba_app/widgets/custom_appBar.dart';
import 'package:suria_saba_app/widgets/custom_button_widget.dart';

class ProductViewPage extends StatefulWidget {
  const ProductViewPage({Key? key}) : super(key: key);

  @override
  State<ProductViewPage> createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(enableBackButton: true,),
      body: SingleChildScrollView(
        child: SizedBox(
          height: ScreenConfig.screenHeight,
          width: ScreenConfig.screenWidth,
          child: Stack(
            children: [
              SizedBox(
                width: ScreenConfig.screenWidth,
                child: Image.asset(
                  "assets/images/categories_background.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                  top: 25,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pinkAccent.withOpacity(0.2),
                                  spreadRadius: 1,
                                  // spreadRadius: 2,
                                  blurRadius: 12,
                                  offset: const Offset(
                                      0, 0.4), // changes position of shadow
                                ),
                              ]),
                          height: ScreenConfig.blockHeight * 50,
                          width: ScreenConfig.blockHeight * 50 ,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    // autoPlay: true,
                                    disableCenter: true,
                                    // height: ScreenConfig.blockHeight *50,
                                    viewportFraction: 1.0,
                                    aspectRatio: 1,
                                    enlargeCenterPage: false,

                                    onPageChanged: (index, reason) {
                                      debugPrint(index.toString());
                                      setState(() {
                                        _index = index;
                                      });
                                      // debugPrint(" save $_index");
                                    },
                                    pageSnapping: true,

                                    //  height: 260
                                  ),
                                  items: [
                                    Image.network(
                                      "https://media.istockphoto.com/photos/boutique-shoes-in-a-store-picture-id1152527286?b=1&k=20&m=1152527286&s=170667a&w=0&h=PWHvKF77V94Wk7eIVEo9bxSVg-ybU8dJR6UXG3fRa5k=",
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                        "https://thumbs.dreamstime.com/b/shoe-store-view-inside-new-models-season-58179612.jpg",
                                        fit: BoxFit.cover),
                                    Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpruvOMtv0uUmKOxQLO_Fb4kE-aWv10LhxAA&usqp=CAU",
                                        fit: BoxFit.cover)
                                  ],
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: DotsIndicator(
                                      dotsCount: 3,
                                      position: _index.toDouble(),
                                      decorator: DotsDecorator(
                                          spacing: const EdgeInsets.only(
                                              left: 3, right: 3),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          activeColor: Colors.white,
                                          color: Colors.grey,
                                          size: const Size.fromRadius(8.0),
                                          activeSize: const Size.fromRadius(8.0),
                                          activeShape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0))),
                                    )),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,right: 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 18,),
                            Row(
                             // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Bata",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 22),),
                              ],
                            ),

                            SizedBox(
                              width: ScreenConfig.screenWidth,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [


                                  Column(
                                   mainAxisSize: MainAxisSize.min,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                   Row(

                                     children: const [
                                       Icon(SubaIcon.stack,color: Colors.red,),
                                       Text(" 1st Floor, Lot 1-60 to 1-62",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),

                                     ],
                                   ),
                                   const SizedBox(height: 10,),
                                   Row(
                                     children: const [
                                       Icon(SubaIcon.clock,color: Colors.red),
                                       Text(" 10am - 10pm",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 15),),

                                     ],
                                   ),
                                    ],),
                                  const SizedBox(width: 6,),

                                  Column(
                                    children: [


                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [

                                          Icon(SubaIcon.phone_outlined,color: Colors.red,),
                                          Text("+60 00 - 1234 5678",style: TextStyle(color: Colors.black),),
                                        ],
                                      ),
                                      const SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [

                                          Icon(SubaIcon.whatsapp,color: Colors.red),
                                          Text("+60 00 - 1234 5678",style: TextStyle(color: Colors.black),),
                                        ],
                                      ),
                                      const SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: const [


                                          Icon(SubaIcon.connection ,color: Colors.red,),
                                          Text("+60 00 - 1234 5678",style: TextStyle(color: Colors.black),),
                                        ],
                                      ),
                                      const SizedBox(height:20),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(child:  PrimaryButton(onTaps: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => const StoreLocationPage()));
                                }, text: "Store Wayfinding,",)),
                              ],
                            ),
                          ],
                        ),
                      )



                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
