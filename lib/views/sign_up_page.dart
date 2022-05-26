import 'package:flutter/material.dart';
import 'package:suria_saba_app/widgets/custom_button_widget.dart';

import '../widgets/company_name_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool selected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
            padding: const EdgeInsets.only(left: 45.0, right: 45),
            child: SingleChildScrollView(
              child: Column(

                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CompanyName(
                      nameColor: Colors.white, nameSize: 55, titleSize: 15),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      maxLines: 1,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "                  First Name",

                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.name,
                      autofocus: false,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "                 Last Name",

                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "                  Email",

                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      autofocus: false,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "                 phone Number",

                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "    Date of Birth",
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(27),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.pinkAccent)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(27),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.pinkAccent)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(27),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.pinkAccent))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "        Gender",
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(27),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.pinkAccent)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(27),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.pinkAccent)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(27),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.pinkAccent))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent))),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Please ensure your password is at  least 8"
                          " \n characters,  1 uppercase, 1 lowercase  and \n1 number.",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      autofocus: false,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "               Confirm password",

                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.pinkAccent))),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle, color: selected ? Colors.green : Colors.white,
                              border: Border.all(width: 2, color: Colors.green)
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: selected ? const Icon(
                                Icons.check,
                                size: 18.0,
                                color: Colors.white,
                              ) : Container()
                          ),
                        ),
                      ),
                      const SizedBox(width: 9,),
                      const FittedBox(
                        child: SizedBox(
                          height: 80,
                          width: 260,
                          child: Text(
                            "I hereby agree that i have read, understood"
                                " and"
                            "  agreed to the Terms & Conditions and Privacy "
                                "Policy"
                            "   and i consent to the processing of my personal "
                                "data as"
                            "described in the Privacy Policy.",
                            style: TextStyle(
                                color: Colors.white, fontSize: 14),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15,),
                   Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child:
                    Row(
                      children: const [
                        InkWell(

                            child: Text("Privacy & Terms",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  PrimaryButton(onTaps: () {}, text: "Sign Up"),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
