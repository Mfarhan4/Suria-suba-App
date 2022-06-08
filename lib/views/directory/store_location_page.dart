import 'package:flutter/material.dart';
import 'package:suria_saba_app/themes/palette.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';

import '../../configer/screen_config.dart';
import '../../suba_icon_icons.dart';
import '../../widgets/company_name_widget.dart';

class StoreLocationPage extends StatelessWidget {
  const StoreLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(enableBackButton: true,),
      body: SizedBox(
        height: ScreenConfig.screenHeight,
        width: ScreenConfig.screenWidth,
        child: Container(
          decoration: const BoxDecoration(
            image: const DecorationImage(
             image: const AssetImage('assets/images/categories_background.png'),
              fit: BoxFit.cover
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
              Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18),
                        child: Card(
                          elevation: 9,
                          shadowColor: Palette.color,
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.white)) ,
                          color: Colors.white,child: Column(children: [
                           CompanyName(nameSize: 35, titleSize: 10, nameColor: Palette.color, titleColor: Palette.color,),

                           const SizedBox(height: 10,),
                           SizedBox(
                               height: ScreenConfig.blockHeight * 35,
                               width: ScreenConfig.screenWidth,
                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Image.asset("assets/images/map.png",fit: BoxFit.cover,),
                               )),

                        ],),),
                      ),

                const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: FittedBox(
                    child: Row(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: ScreenConfig.blockHeight * 22,
                              width: ScreenConfig.blockHeight * 22,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80",
                                    ),
                                    fit: BoxFit.cover,
                                    // colorFilter: ColorFilter.mode(Palette.blendColor.withOpacity(0.6), BlendMode.)
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(
                                    SubaIcon.stack,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    " 1st Floor, Lot 1-60 to 1-62",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            FittedBox(
                              child: Row(
                                children: const [
                                  Icon(SubaIcon.clock, color: Colors.red),
                                  Text(
                                    " 10am - 10pm",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    SubaIcon.phone_outlined,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "+60 00 - 1234 5678",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(SubaIcon.whatsapp, color: Colors.red),
                                  Text(
                                    "+60 00 - 1234 5678",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            FittedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    SubaIcon.connection,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "+60 00 - 1234 5678",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),

      ),

    );
  }
}
