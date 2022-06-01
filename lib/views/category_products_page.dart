import 'package:flutter/material.dart';

import '../configer/screen_config.dart';
import '../themes/palette.dart';
import '../widgets/company_name_widget.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(children: [

          Container(
            alignment: Alignment.topCenter,
            height: ScreenConfig.screenHeight,
            width: ScreenConfig.screenWidth,
            child: Image.asset("assets/unnamed.png"),
          ),
          Positioned.fill(
            top: ScreenConfig.topPadding,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.white),
              child: Column(
                children: [
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
                      children: [
                        const SizedBox(
                          height: 9,
                        ),
                        CompanyName(
                          nameColor: Palette.color,
                          titleSize: 10,
                          nameSize: 35,
                          titleColor: Colors.black,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fashion",
                    style: TextStyle(
                        color: Palette.color,
                        fontSize: 29,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: ScreenConfig.blockHeight*65,
                    child: GridView.builder(
                        itemCount: 20,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: ScreenConfig.blockHeight * 80,
                                  width: ScreenConfig.blockHeight * 80,
                                  decoration:  const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12)),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80",
                                        ),
                                        fit: BoxFit.cover,
                                        // colorFilter: ColorFilter.mode(Palette.blendColor.withOpacity(0.6), BlendMode.)
                                      )),
                                ),
                              ),



                            ],
                          );
                        }),
                  )
                ],
              ),
            ),
          )



        ],),
      ),
    );
  }
}
