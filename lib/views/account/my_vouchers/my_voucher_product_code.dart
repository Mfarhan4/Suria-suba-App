
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/providers/scanner_provider.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';
import 'package:suria_saba_app/widgets/custom_button_widget.dart';
import 'package:suria_saba_app/widgets/scanner_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../themes/palette.dart';

class MyVouchersProductCodePage extends StatefulWidget {
  const MyVouchersProductCodePage({Key? key}) : super(key: key);

  @override
  State<MyVouchersProductCodePage> createState() =>
      _MyVouchersProductCodePageState();
}

class _MyVouchersProductCodePageState extends State<MyVouchersProductCodePage> {
  String url = 'https://media.istockphoto.com/photos/woman-holding-sale-shopping-bags-consumerism-shopping-lifestyle-picture-id1254508881?k=20&m=1254508881&s=612x612&w=0&h=d6KO9oMB3cMLGSFEu5GoGbYX0RpkHSEoUCARo7UagTI=';
  _launch() async {

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }



  @override
  Widget build(BuildContext context) {
    final scanProvider=Provider.of<ScannerProvider>(context,listen:false);
    return Scaffold(
      appBar: CustomAppBar(
        enableBackButton: true,
      ),
      body: Container(
        height: ScreenConfig.bodyHeight,
        width: ScreenConfig.screenWidth,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/voucher_background.png'),
                fit: BoxFit.cover)),
        child: SizedBox(
          height: ScreenConfig.bodyHeight,
          width: ScreenConfig.screenWidth,
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 18),
            child: SingleChildScrollView(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30,),
                  Text(
                    "MY VOUCHERS",
                    style: TextStyle(
                        color: Palette.color,
                        fontWeight: FontWeight.w900,
                        fontSize: 22),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // const SizedBox(height: 40,),

                  Container(
                    height: ScreenConfig.safeHeight * 40,
                    //  width: ScreenConfig.bodyWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink[300]!.withOpacity(0.4),
                          offset: const Offset(3, 3.5),
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          "https://media.istockphoto.com/photos/woman-holding-sale-shopping-bags-consumerism-shopping-lifestyle-picture-id1254508881?k=20&m=1254508881&s=612x612&w=0&h=d6KO9oMB3cMLGSFEu5GoGbYX0RpkHSEoUCARo7UagTI=",
                          fit: BoxFit.cover,
                          width: ScreenConfig.screenWidth,
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 100,
                    width: ScreenConfig.safeWidth * 80,

                    child: Card(
                      color: Colors.white,
                      child: Column(children: [
                        SizedBox(height: 12,),
                        Text("Code",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                        SizedBox(height: 12,),
                        Text("CDE012345",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 22,color: Palette.color),)


                      ],),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
