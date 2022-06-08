import 'package:flutter/material.dart';
import 'package:suria_saba_app/themes/palette.dart';
import 'package:suria_saba_app/views/login/forget_password_page.dart';
import 'package:suria_saba_app/widgets/company_name_widget.dart';

import '../../widgets/custom_button_widget.dart';
import '../bottom_bar_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Stack(children: [
      Column(
        children: [
          Flexible(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.darken),
                child: Image.asset(
                  "assets/images/register_background.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      Positioned(
        child: Padding(
          padding: const EdgeInsets.only(left: 45.0,right: 45),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 35,),
              const CompanyName(nameColor: Colors.white, nameSize: 80, titleSize: 20,titleColor: Colors.white,),
              const Expanded(child: Divider()),
              SizedBox(
                height: 50,
                child: TextFormField(
                  maxLines: 1,

                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(


                      fillColor: Colors.white,

                      filled: true,
                      hintText: "                  Email",


                      prefixIcon: const Icon(Icons.person,color: Colors.grey,),
                      hintStyle: const TextStyle(color: Colors.black,),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide:
                          const BorderSide(width: 1, color: Colors.pinkAccent)),
                      enabledBorder:
                      OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide:
                          const BorderSide(width: 1, color: Colors.pinkAccent)),
                    focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27),
                        borderSide:
                        const BorderSide(width: 1, color: Colors.pinkAccent))

                  ),
                ),
              ),
              const SizedBox(height: 25,),
              SizedBox(
                height: 50,
                child: TextFormField(
                  obscureText: true,
                    keyboardType: TextInputType.number,
                    autofocus: false,
                  decoration: InputDecoration(
                   fillColor: Colors.white,
                      filled: true,
                      hintText: "                 password",

                      prefixIcon: const Icon(Icons.lock,color: Colors.grey,),
                      hintStyle: const TextStyle(color: Colors.black,),


                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide:
                          const BorderSide(width: 1, color: Colors.pinkAccent)),
                      enabledBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(27),
                          borderSide:
                          const BorderSide(width: 1, color: Colors.pinkAccent)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27),
                    borderSide:
                    const BorderSide(width: 1, color: Colors.pinkAccent))

                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:  [
                InkWell(
                    onTap: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const ForgetPage()));
                    },

                    child: const Text("Forget Password?",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ],),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const BottomBArPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 60.0,right: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(27),
                            border: Border.all(width: 1, color: Colors.pink),
                          ),
                          child:  SizedBox(
                              height: 55,
                              width: 80,
                              child: Center(
                                  child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Palette.color,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),

            ],
          ),
        ),
      ),
    ])

    );
  }
}
