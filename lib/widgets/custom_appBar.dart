import 'package:flutter/material.dart';

import '../configer/screen_config.dart';
import '../themes/palette.dart';
import 'company_name_widget.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
   CustomAppBar({Key? key,   required   this.enableBackButton, }) : super(key: key);

    final bool enableBackButton;

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Container(
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
      child: SizedBox(
          height: ScreenConfig.blockHeight * 15.5,
          child: Stack(children: [

            Container(
              alignment: Alignment.topCenter,
              height: ScreenConfig.screenHeight,
              width: ScreenConfig.screenWidth,
              child: Image.asset("assets/images/statusbar.png"),
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
                child: FittedBox(
                  child: CompanyName(
                    nameColor: Palette.color,
                    titleSize: 10,
                    nameSize: ScreenConfig.blockHeight * 5.2,
                    titleColor: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
                top:ScreenConfig.topPadding *2,
                left: 10,
                child:enableBackButton? InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back,color: Colors.black,)):const SizedBox()),
          ],),
        ),
    );
  }

  @override
  Size get preferredSize {
    return  Size.fromHeight(ScreenConfig.blockHeight * 15.5);
  }
}
