import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';

import 'custom_button_widget.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({Key? key , required this.text1, required this.text2,required this.text3,required this.photo}) : super(key: key);
  final String text1;
  final String text2;
  final String text3;
  final String photo;
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        enableBackButton: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
             Text(text1
              ,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            const SizedBox(
              height: 30,
            ),
            CircleAvatar(
                radius: 90,
                child: Image.asset(photo),
                backgroundColor: Colors.purpleAccent),
             Text(text2,style: const TextStyle(fontSize: 28,fontWeight: FontWeight.w900,letterSpacing: 1),),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(text3,style: const TextStyle(fontSize: 16),),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
                height:  44,
                width:  ScreenConfig.blockWidth * 57,
                child: PrimaryButton(text: 'Continue', onTaps: () {
                  Navigator.of(context).pop(context);
                  Navigator.of(context).pop(context);
                 // Navigator.pop(context);

                },borderRadius: 7,)),
              const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
