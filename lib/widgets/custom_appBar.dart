import 'package:flutter/material.dart';

import '../configer/screen_config.dart';
import '../themes/palette.dart';
import 'company_name_widget.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppBar({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return SizedBox(
        height: ScreenConfig.blockHeight * 15.5,
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
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
              ),
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
                        CompanyName(
                          nameColor: Palette.color,
                          titleSize: 10,
                          nameSize: ScreenConfig.blockHeight * 5.2,
                          titleColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],),
      );
  }

  @override
  Size get preferredSize {
    return  Size.fromHeight(ScreenConfig.blockHeight * 15.5);
  }
}
