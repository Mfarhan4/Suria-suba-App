import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/views/account/profile_edit_page.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';
import 'package:suria_saba_app/widgets/custom_button_widget.dart';

import '../directory/change_password_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: CustomAppBar(enableBackButton: true),
      body:
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/register_background.png"),
            fit: BoxFit.cover,

            // colorFilter: ColorFilter.mode(Colors.black45.withOpacity(0.0), BlendMode.color)
          ),
        ),
        child: BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: Container(
            width: ScreenConfig.screenWidth,
            height: ScreenConfig.blockHeight * 81,
            color: Colors.black.withOpacity(0.5),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const CircleAvatar(
                    radius: 60,
                    child: FittedBox(
                        child: Icon(
                      SubaIcon.person,
                      size: 100,
                      color: Colors.blueAccent,
                    )),
                    backgroundColor: Colors.white),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "User Name",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "01 / 02 / 1990",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "user@gmail.com",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "+60123456789",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22),),color: Colors.white),

                    width: ScreenConfig.screenWidth,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0,right: 25),
                      child: Column(children: [
                        const SizedBox(height: 20,),
                        SizedBox(
                            height: 37,
                            child: PrimaryButton(onTaps: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> const EditProfilePage()));
                            }, text: "Edit Profile",borderRadius: 10,)),
                        const SizedBox(height: 20,),
                        SizedBox(
                            height: 37,
                            child: PrimaryButton(onTaps: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> const ChangePasswordPage()));
                            }, text: "Change Password",borderRadius: 10,)),
                        const SizedBox(height: 20,),
                        SizedBox(
                            height: 37,
                            child: PrimaryButton(onTaps: (){}, text: "Log Out",borderRadius: 10,))
                      ],),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
