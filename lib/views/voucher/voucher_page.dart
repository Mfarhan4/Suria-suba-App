import 'package:flutter/material.dart';
import 'package:suria_saba_app/widgets/products_widget/voucher_products_widget.dart';

import '../../configer/screen_config.dart';
import '../../widgets/custom_appBar.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  CustomAppBar(enableBackButton: false,),
        body:
        SizedBox(
            height: ScreenConfig.screenHeight,
            width: ScreenConfig.screenWidth,
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
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[300]!.withOpacity(0.4),
                                offset: Offset(2, 4),
                                blurRadius: 2,
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
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pink[300]!.withOpacity(0.4),
                                  offset: Offset(2, 4),
                                  blurRadius: 2)
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
                                Icons.filter,
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
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenConfig.blockHeight * 50,
                      child: GridView.builder(
                          itemCount: 12,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3.0 / 4,
                          ),
                          itemBuilder: (context, index) {
                            return const VoucherProductsWidget();
                          }),
                    ),
                  ],
                ),
              ),
            )));
  }
}
