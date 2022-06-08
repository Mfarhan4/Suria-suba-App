import 'package:flutter/material.dart';
import 'package:suria_saba_app/themes/palette.dart';
import 'package:suria_saba_app/widgets/custom_appBar.dart';

import '../../configer/screen_config.dart';
import '../../data/category_data.dart';
import '../../widgets/company_name_widget.dart';
import 'category_products_page.dart';

class DirectoryPage extends StatelessWidget {
  const DirectoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(enableBackButton: false,),
      body: Column(
        children: [
          SizedBox(
            height: ScreenConfig.blockHeight * 12,
            child: Stack(
              children: [
                        SizedBox(

                          width: ScreenConfig.screenWidth,
                          child: Image.asset(
                            'assets/images/categories_background1.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),


                Positioned(
                    top: 22,
                    left: 25,right: 25,
                    child: Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                      boxShadow: [BoxShadow(color: Colors.pink[300]!.withOpacity(0.4),offset: Offset(4,7),blurRadius: 10)],
                      ),
                      //borderRadius: BorderRadius.circular(12),
                      // shadowColor: Colors.pink.withOpacity(0.8),
                      // elevation: 8,

                      child: SizedBox( height: 35,
                        child:
                        TextField(

                          textAlign: TextAlign.center,

                          decoration: InputDecoration(

                            contentPadding:
                                const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                            filled: true,

                            hintText: "Search Keywords",
                            prefixIcon: const Icon(Icons.search),
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.transparent)),

                          ),
                        ),
                      ),
                    )),

              ],
            ),
          ),
          SizedBox(
            height: ScreenConfig.blockHeight * 63,
            child:

          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Colors.white),
            child:

            Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: ScreenConfig.blockHeight * 5,
                  child: Text(
                    "CATEGORY",
                    style: TextStyle(
                        color: Palette.color,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18),
                  child: SizedBox(

                    height: ScreenConfig.blockHeight * 55,
                    child:
                    GridView.builder(
                        itemCount: CategoryClass.dataList.length,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const CategoryProducts()));
                            },
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: ScreenConfig.blockHeight * 80,
                                    width: ScreenConfig.blockHeight * 80,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(12)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            CategoryClass
                                                .dataList[index].image,
                                          ),
                                          fit: BoxFit.cover,
                                          // colorFilter: ColorFilter.mode(Palette.blendColor.withOpacity(0.6), BlendMode.)
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color(0xff8c63da)
                                          .withOpacity(0.14),
                                    ),
                                    height: ScreenConfig.blockHeight * 80,
                                    width: ScreenConfig.blockHeight * 80,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color:
                                      Palette.blendColor.withOpacity(0.6),
                                    ),
                                    height: ScreenConfig.blockHeight * 80,
                                    width: ScreenConfig.blockHeight * 80,
                                  ),
                                ),
                                Positioned.fill(
                                    top: 22,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 10,
                                                    color: const Color(
                                                        0xff8c63da)
                                                        .withOpacity(1.0),
                                                    spreadRadius: 0.35)
                                              ],
                                            ),
                                            child: CircleAvatar(
                                              backgroundColor:
                                              Colors.white,
                                              radius: ScreenConfig.blockWidth * 5.5,
                                              child: Center(
                                                  child: Icon(
                                                    CategoryClass
                                                        .dataList[index].icon,
                                                    size: 25,
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenConfig.blockHeight * 1.3,
                                          ),
                                          Text(
                                            CategoryClass
                                                .dataList[index].name,
                                            style:  TextStyle(
                                              fontSize: ScreenConfig.blockWidth * 3,
                                              color: Colors.white,
                                              fontWeight:
                                              FontWeight.w900,
                                            ),
                                            maxLines: 2,
                                            textAlign:
                                            TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),)
        ],
      ),
    );
  }
}
