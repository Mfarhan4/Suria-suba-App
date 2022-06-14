import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/themes/palette.dart';

import '../../../configer/screen_config.dart';
import '../../../suba_icon_icons.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_button_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(enableBackButton: true),
      body:
      Container(
        width: ScreenConfig.screenWidth,
        height: ScreenConfig.blockHeight * 81,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/voucher_background.png"),
            fit: BoxFit.cover,


          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0,right: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),

                 Text(
                  "EDIT PROFILE",
                  style: TextStyle(fontSize: 18, color: Palette.color,fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 12,),
                const CircleAvatar(
                    radius: 40,
                    child: FittedBox(
                        child: Icon(
                          SubaIcon.person,
                          size: 70,
                          color: Colors.blueAccent,
                        )),
                    backgroundColor: Colors.white),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "User Name",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),

                const SizedBox(height: 20,),
                SizedBox(
                    height: 43,
                    child:Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                       // boxShadow: [BoxShadow(color: Colors.pink[300]!.withOpacity(0.4),offset: Offset(4,7),blurRadius: 10)],
                      ),
                      //borderRadius: BorderRadius.circular(12),
                      // shadowColor: Colors.pink.withOpacity(0.8),
                      // elevation: 8,

                      child: SizedBox(
                        child:
                        TextField(

                          textAlign: TextAlign.center,

                          decoration: InputDecoration(

                            contentPadding:
                            const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                            filled: true,

                            hintText: "user@mail.com",

                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),borderSide:  BorderSide(color: Palette.color)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),borderSide:  BorderSide(color: Palette.color)),

                          ),
                        ),
                      ),
                    )),
                const SizedBox(height: 20,),
                SizedBox(
                    height: 43,
                    child:Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                       // boxShadow: [BoxShadow(color: Colors.pink[300]!.withOpacity(0.4),offset: Offset(4,7),blurRadius: 10)],
                      ),
                      //borderRadius: BorderRadius.circular(12),
                      // shadowColor: Colors.pink.withOpacity(0.8),
                      // elevation: 8,

                      child: SizedBox(
                        child:
                        TextField(

                          textAlign: TextAlign.center,

                          decoration: InputDecoration(

                            contentPadding:
                            const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                            filled: true,

                            hintText: "+60 12 345 6789",

                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),borderSide:  BorderSide(color: Palette.color)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),borderSide:  BorderSide(color: Palette.color)),

                          ),
                        ),
                      ),
                    )),
               // Expanded(child: Divider(color: Colors.white,)),
                SizedBox(height: 90,),
                SizedBox(
                    height: 35,
                    width: ScreenConfig.blockWidth * 50,
                    child: PrimaryButton(onTaps: (){}, text: 'Update',borderRadius: 7,))


              ],
            ),
          ),
        ),
      ),
    );
  }
}
