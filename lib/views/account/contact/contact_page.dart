import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/providers/scanner_provider.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';
import '../../../suba_icon_icons.dart';
import '../../../themes/palette.dart';
import '../../../widgets/textLaunch_widget.dart';
class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() =>
      _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String number="tel//";
  @override
  Widget build(BuildContext context) {
    final scanProvider = Provider.of<ScannerProvider>(context, listen: false);
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
        child: FittedBox(
          child: SizedBox(
            height: ScreenConfig.bodyHeight,
            width: ScreenConfig.screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),

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
                  height: 10,
                ),
                const Text(
                  "Suria Sabah is a modern 1-stop lifestyle shopping mall"
                      "located in the heart of vibrant Kota Kinabalu city centre with"
                      "a good blend of international and local brands, boutiques"
                      "and eateries, perfect for the young, the adults and the"
                      "elderlies.",
                ),
                const SizedBox(
                  height: 15,
                ),
                 const Text("Contact Information",style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w900),),
                const SizedBox(
                  height: 15,
                ),
                Row(children: [


                  Icon(SubaIcon.phone_filled,color: Palette.color,

                  ),
                  SizedBox(width: 10,),
                  SizedBox(
                      width: ScreenConfig.blockWidth *90,
                      child: const TextLaunchWidget(url: '+923074600554',type: "phone",)),
                ],),
                const SizedBox(
                  height: 15,
                ),
                Row(children: [


                  Icon(SubaIcon.whatsapp,color: Palette.color,

                  ),
                  SizedBox(width: 10,),
                  SizedBox(
                      width: ScreenConfig.blockWidth *90,
                      child: const TextLaunchWidget(url: '+923074600554',type: "whatsApp",)),
                ],),
                const SizedBox(
                  height: 15,
                ),
                Row(children: [


                  Icon(SubaIcon.mail,color: Palette.color,

                  ),
                  SizedBox(width: 10,),
                  SizedBox(
                      width: ScreenConfig.blockWidth *90,
                      child: const TextLaunchWidget(url: 'mfarhandilawar4@gmail.com',type: "mail" ,)),
                ],),
                const SizedBox(
                  height: 15,
                ),
                Row(children: [


                  Icon(SubaIcon.facebook,color: Palette.color,

                  ),
                  SizedBox(width: 10,),
                  SizedBox(
                      width: ScreenConfig.blockWidth *90,
                      child: const TextLaunchWidget(url: 'https://www.facebook.com/',type: "url",)),
                ],),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
