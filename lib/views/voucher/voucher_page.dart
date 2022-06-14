import 'package:flutter/material.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/widgets/products_widget/voucher_products_widget.dart';

import '../../configer/screen_config.dart';
import '../../widgets/custom_app_bar.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  CustomAppBar(enableBackButton: false,),
        body:
        SizedBox(
            height: ScreenConfig.bodyHeight,
            width: ScreenConfig.bodyWidth,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('assets/images/voucher_main_background.png'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Column(
                  children: [
                    SizedBox(
                      width: ScreenConfig.screenWidth,
                      height: ScreenConfig.blockHeight * 17,
                      child: FittedBox(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: ScreenConfig.screenWidth,
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.pink[300]!.withOpacity(0.4),
                                      offset: const Offset(3, 3.5),
                                      blurRadius: 4,
                                    )
                                  ],
                                ),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    filled: true,
                                    hintText: "Search Keywords",
                                    prefixIcon: const Icon(Icons.search),
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: ScreenConfig.screenWidth,
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.pink[300]!.withOpacity(0.4),
                                        offset: const Offset(3, 3.5),
                                        blurRadius: 4)
                                  ],
                                ),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    filled: true,
                                    hintText: "Filter",
                                    prefixIcon: const Icon(
                                      SubaIcon.filters,
                                    ),
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenConfig.blockHeight * 58,
                      child: GridView.builder(
                          itemCount: 12,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                                mainAxisSpacing: 5,
                                crossAxisSpacing: 5,
                            childAspectRatio: 3.0/ 4,
                          ),
                          itemBuilder: (context, index) {
                            return const FittedBox(child:   Padding(
                              padding: EdgeInsets.all(9.0),
                              child: VoucherProductsWidget(text2: 'McDonald,s', text1: 'RM4 e-voucher', image: 'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80',),
                            ));
                          }),
                    ),
                  ],
                ),
              ),
            )));
  }
}
