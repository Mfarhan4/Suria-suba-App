import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suria_saba_app/views/login_page.dart';
import 'package:suria_saba_app/views/sign_up_page.dart';
import 'package:suria_saba_app/widgets/company_name_widget.dart';
import 'package:suria_saba_app/widgets/custom_button_widget.dart';

class BeforeLoginPage extends StatelessWidget {
  const BeforeLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
        Column(
        children: [
          Flexible(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.network(
                "https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg",
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
                children: const [
                  CompanyName(
                    nameSize: 90,
                    nameColor: Colors.pinkAccent,
                    titleSize: 20,
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
                        child: const SizedBox(
                            height: 55,
                            width: 80,
                            child: Center(
                                child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.pink,
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
            PrimaryButton(
              onTaps: () {
                debugPrint("signUp Page ");
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignUpPage()));
              },
              text: 'Sign Up ',
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    ]));
  }
}
