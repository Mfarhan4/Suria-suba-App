import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/widgets/custom_button_widget.dart';

import '../providers/image_provider.dart';
import '../themes/palette.dart';

class ChoosePhoto extends StatefulWidget {
  const ChoosePhoto({
    Key? key,
  }) : super(key: key);

  @override
  State<ChoosePhoto> createState() => _ChoosePhotoState();
}

class _ChoosePhotoState extends State<ChoosePhoto> {


  @override
  Widget build(BuildContext context) {
    final imagesProvider = Provider.of<ImagesProvider>(context, listen: false);


    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0,right: 30),
          child: Row

            (
           // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Column(

                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(color: Palette.color)),
                    height: 85,
                    child: MaterialButton(
                      onPressed: () {
                        imagesProvider.chooseCamera();
                      },

                      child:  Center(
                        child: Icon(
                          SubaIcon.camera,color: Palette.color,size: 28,

                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 7,),
                  const Text("Camera")
                ],
              ),

              Column(
                children: [
                  Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(color: Palette.color),),
                    height: 85,
                    child: MaterialButton(
                      onPressed: () {
                        imagesProvider.chooseGallery();
                      },

                      child:  Icon(
                        SubaIcon.images,
                          color: Palette.color, size: 35),
                    ),
                  ),
                  const SizedBox(height: 7,),
                  const Text("Gallery")
                ],
              ),
            ],
          ),
        ),

     const SizedBox(height: 20,),

        Consumer<ImagesProvider>(
            builder: (context, dailyReportProvider, child) {
              if (dailyReportProvider.images==null) {
              //  debugPrint(" Image is also null");
                return const SizedBox();
              } else {
               // debugPrint(" Image is NOt null");
                return Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  //decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                 // width: ScreenConfig.screenWidth,

                 // height:600,
                  child:
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Image.file(
                      File(dailyReportProvider.images!.path),
                      errorBuilder: (context, e, st) {
                        return const Text('Error');
                      },
                    ),
                  )
                );
              }
            }),
      ],
    );
  }
}
