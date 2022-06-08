import 'package:flutter/material.dart';

import '../../configer/screen_config.dart';

class VoucherProductsWidget extends StatelessWidget {
  const VoucherProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 7.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height:ScreenConfig.blockHeight * 25,
            width: ScreenConfig.blockHeight * 25,
            child: Container(
              height: ScreenConfig.blockHeight * 80,
              width: ScreenConfig.blockHeight * 80,
              decoration:  BoxDecoration(


              boxShadow: [BoxShadow(color: Colors.pink[300]!.withOpacity(0.4),offset: const Offset(2,4),blurRadius: 5)],


                  borderRadius: const BorderRadius.all(
                      Radius.circular(12)),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80",
                    ),
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode(Palette.blendColor.withOpacity(0.6), BlendMode.)
                  )),
            ),
          ),
          const SizedBox(height: 10,),
          const Text("McDonald’s",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          const SizedBox(height: 2,),
          const Text("RM5 e-voucher"),
        ],
      ),
    );

  }
}
