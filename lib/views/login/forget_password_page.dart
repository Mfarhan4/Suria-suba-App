import 'package:flutter/material.dart';

import '../../widgets/company_name_widget.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({Key? key}) : super(key: key);

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
                  child: Image.network(
                    "https://www.mckinsey.com.br/~/media/mckinsey/industries/retail/our%20insights/boosting%20mall%20revenues%20through%20advanced%20analytics/boosting%20mall%20revenues_1536x1536_200.jpg",
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
                 
                const CompanyName(nameColor: Colors.white, nameSize: 80, titleSize: 20,titleColor: Colors.pinkAccent,),
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
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:  [
                    Container(child: Text("Enter your email to receive an email to reset\n your  password.",style: TextStyle(color: Colors.white,fontSize: 15,),maxLines: 2,)),
                  ],),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => const LoginPage()));
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
                            child: const SizedBox(
                                height: 55,
                                width: 80,
                                child: Center(
                                    child: Text(
                                      'Reset Password',
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
