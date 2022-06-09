import 'package:flutter/material.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';

import '../../configer/screen_config.dart';
import '../../themes/palette.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button_widget.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

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
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),

              Text(
                "CHANGE PASSWORD",
                style: TextStyle(fontSize: 18, color: Palette.color,fontWeight: FontWeight.w700),
              ),

              const SizedBox(
                height: 15,
              ),

              SizedBox(
                  height: 43,
                  child:Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                    //  boxShadow: [BoxShadow(color: Colors.pink[300]!.withOpacity(0.4),offset: Offset(4,7),blurRadius: 10)],
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

                          hintText: "Current Password",
                          suffixIcon: Icon(Icons.lock),

                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),borderSide:  BorderSide(color: Palette.color)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),borderSide:  BorderSide(color: Palette.color)),

                        ),
                      ),
                    ),
                  )),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 9),
                child: Column(
                  children: [
                    Text(
                      "Please ensure your password is at least 8 characters"
                        "1 uppercase, 1 lowercase and 1 number",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
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

                          hintText: "New Pasword",
                          suffixIcon:Icon(Icons.hide_source) ,

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

                          hintText: "Confirm New Password",
                          suffixIcon: Icon(Icons.hide_source),

                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),borderSide:  BorderSide(color: Palette.color)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),borderSide:  BorderSide(color: Palette.color)),

                        ),
                      ),
                    ),
                  )),
              Expanded(child: Divider(color: Colors.white,)),
              SizedBox(
                  height: 35,
                  width: ScreenConfig.blockWidth * 50,
                  child: PrimaryButton(onTaps: (){}, text: 'Update',borderRadius: 7,))


            ],
          ),
        ),
      ),
    );
  }
}