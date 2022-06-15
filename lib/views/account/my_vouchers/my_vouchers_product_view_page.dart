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

import '../../../suba_icon_icons.dart';
import '../../../themes/palette.dart';
import 'my_voucher_product_code.dart';

class MyVouchersProductViewPage extends StatefulWidget {
  const MyVouchersProductViewPage({Key? key}) : super(key: key);

  @override
  State<MyVouchersProductViewPage> createState() =>
      _MyVouchersProductViewPageState();
}

class _MyVouchersProductViewPageState extends State<MyVouchersProductViewPage> {
  String url =
      'https://media.istockphoto.com/photos/woman-holding-sale-shopping-bags-consumerism-shopping-lifestyle-picture-id1254508881?k=20&m=1254508881&s=612x612&w=0&h=d6KO9oMB3cMLGSFEu5GoGbYX0RpkHSEoUCARo7UagTI=';

  _launch() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget yesButton = TextButton(
      child: const Text(
        "Yes",
        style: TextStyle(color: Colors.blue),
      ),
      onPressed: () async {
        Navigator.of(context).pop(context);
        await Navigator.push(context,
            MaterialPageRoute(builder: (_) => const MyVouchersProductCodePage()));
      },
    );
    Widget noButton = TextButton(
      child: const Text(
        "No",
        style: TextStyle(color: Colors.blue),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text("Are you sure you want to reveal?", textAlign: TextAlign.center),
        ],
      ),
      actions: [
        Row(
          children: [
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 0.02,
                    )),
                    child: yesButton)),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 0.02,
                    )),
                    child: noButton)),
          ],
        ),
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

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
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "MY VOUCHERS",
                  style: TextStyle(
                      color: Palette.color,
                      fontWeight: FontWeight.w900,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
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
                  height: 20,
                ),
                const Text(
                  "Did you know Whoosh Eyewear is offering optical protection against accidental"
                  "damage? No more worries about having to purchase another pair of glasses if "
                  "your new optical glasses accidentally break."
                  "If you purchase Whoosh Couture Series with upgraded lenses, you will receive"
                  "FREE* Optical Protection Plan from Whoosh Eyewear! Limited time offer.",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Text(
                      "*T&Cs Apply.",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: ScreenConfig.bodyWidth * 90,
                  height: 20,
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(children: [
                      const TextSpan(
                          text: 'For more info: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black)),
                      TextSpan(
                        text: url,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            _launch();
                          },
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ]),
                  ),
                ),
                //  const Expanded(child: Divider()),
                const SizedBox(
                  height: 10,
                ),

                SizedBox(
                  child: PrimaryButton(
                    onTaps: () {
                      scanProvider.messageSitter(false);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ScannerWidget()));
                    },
                    text: '  Redeem Now',
                    borderRadius: 7,
                    icon: SubaIcon.scan,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                PrimaryButton(
                  onTaps: () {
                    // showAlertDialog(context);

                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text("Are you sure you want to reveal?",
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          actions: [
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          width: 0.02,
                                        )),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        const MyVouchersProductCodePage()));
                                          },
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                          child: const Text("Yes",style: TextStyle(color: Colors.blue),),
                                        ))),
                                SizedBox(width: 4,),
                                Expanded(
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.02,
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white)),
                                          onPressed: () {

                                            Navigator.pop(context);
                                          },
                                          child: const Text("NO",style: TextStyle(color: Colors.blue)),
                                        ))),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                  text: 'Reveal Code',
                  borderRadius: 7,
                  // icon: Icons.document_scanner,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
