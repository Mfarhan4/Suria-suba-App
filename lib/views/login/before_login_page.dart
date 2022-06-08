import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suria_saba_app/views/login/login_page.dart';
import 'package:suria_saba_app/views/login/sign_up_page.dart';
import 'package:suria_saba_app/widgets/company_name_widget.dart';
import 'package:suria_saba_app/widgets/custom_button_widget.dart';

import '../../themes/palette.dart';
import '../bottom_bar_page.dart';

class BeforeLoginPage extends StatelessWidget {
  const BeforeLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
          body: Stack(children: [
          Column(
          children: [
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  "assets/images/register_background.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
          Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 140,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Row(
                  children:  [
                    CompanyName(
                      nameSize: 90,
                      nameColor: Palette.color,
                      titleSize: 20,
                      titleColor: Palette.color,
                    ),
                  ],
                ),
              ),
              const Expanded(child: Divider()),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LoginPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 117.0, right: 117),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                height: 29,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 115.0,right: 115),
                child: PrimaryButton(
                  onTaps: () {
                    debugPrint("signUp Page ");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignUpPage()));
                  },
                  text: 'Sign Up ',
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ])),
    );
  }
}
