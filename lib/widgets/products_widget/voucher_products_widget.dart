import 'package:flutter/material.dart';

import '../../configer/screen_config.dart';

class VoucherProductsWidget extends StatelessWidget {
  const VoucherProductsWidget({Key? key,required this.image,required this.text1,required this.text2}) : super(key: key);
 final String image;
 final String text1;
 final String text2;
  @override
  Widget build(BuildContext context) {
    return  FittedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height:ScreenConfig.blockHeight * 25,
            width: ScreenConfig.blockHeight * 25,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
              child: Container(
                // height: ScreenConfig.blockHeight * 80,
                // width: ScreenConfig.blockHeight * 80,
                decoration:  BoxDecoration(


                boxShadow: [BoxShadow(color: Colors.pink[300]!.withOpacity(0.5),offset: const Offset(2,4),blurRadius: 4.5)],


                    borderRadius: const BorderRadius.all(
                        Radius.circular(7)),
                    image:  DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                      // colorFilter: ColorFilter.mode(Palette.blendColor.withOpacity(0.6), BlendMode.)
                    )),
              ),
            ),
          ),
          const SizedBox(height: 10,),
           Text(text1,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          const SizedBox(height: 2,),
           Text(text2),
        ],
      ),
    );

  }
}
