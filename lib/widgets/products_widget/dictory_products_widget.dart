import 'package:flutter/material.dart';

import '../../configer/screen_config.dart';

class DirectoryProductsWidget extends StatelessWidget {
  const DirectoryProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: ScreenConfig.blockHeight * 15,
            width: ScreenConfig.blockHeight * 15,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80",
                    ),
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode(Palette.blendColor.withOpacity(0.6), BlendMode.)
                  )),
            ),
          ),
          const Text("Bata",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const Text("1st Floor",style: TextStyle(color: Colors.pinkAccent),),
          const Text("Lot 1-60 to 1-62",style: TextStyle(color: Colors.pinkAccent),)
        ],
      ),
    );;
  }
}
