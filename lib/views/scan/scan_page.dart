import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:suria_saba_app/providers/scroller_provider.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/themes/palette.dart';
import 'package:suria_saba_app/views/scan/scan_history_page.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';

import '../../configer/screen_config.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/photo_chose_widget.dart';
import '../../widgets/scrollbar_widget.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  final TextEditingController _storeNameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(now);
    _storeNameController.text = Provider.of<ScanProvider>(context, listen: true).item;

    return Scaffold(
      appBar: CustomAppBar(
        enableBackButton: false,
      ),
      body: SizedBox(
          height: ScreenConfig.screenHeight,
          width: ScreenConfig.screenWidth,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage('assets/images/voucher_main_background.png'),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SUBMIT SPEND",
                          style: TextStyle(
                              fontSize: 18,
                              color: Palette.color,
                              fontWeight: FontWeight.w900),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) => const ScanHistoryPage()));
                          },
                          child:  Icon(
                            SubaIcon.clock_timing,
                            color: Palette.color,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Store Name",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Consumer<ScanProvider>(
                        builder: (context, scanProvider, child) {
                      return Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pink[300]!.withOpacity(0.4),
                                    offset: const Offset(2, 4),
                                    blurRadius: 2,
                                  )
                                ],
                              ),
                              child: TextField(
                                controller: _storeNameController,
                                textAlign: TextAlign.center,

                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10, right: 10),
                                  filled: true,
                                  hintText: "Search Shop",
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          bottomLeft: Radius.circular(12)),
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          bottomLeft: Radius.circular(12)),
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink[300]!.withOpacity(0.4),
                                  offset: const Offset(2, 4),
                                  blurRadius: 2,
                                )
                              ],
                            ),
                            child: TextField(
                              onTap: (){
                                scanProvider.toggleSerch();

                              },
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 10, right: 10),
                                filled: true,
                                prefixIcon: Icon(
                                  SubaIcon.drop_down,
                                  color: Colors.black,
                                  size: 9,
                                ),
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                    const SizedBox(
                      height: 6,
                    ),
                    Consumer<ScanProvider>(
                        builder: (context, scanProvider, child) {
                      if (scanProvider.isSearchVisible) {
                        return SizedBox(
                          height: ScreenConfig.blockHeight * 50,
                          width: ScreenConfig.blockWidth * 93,
                          child: const ScrollBarWidget(),
                        );
                      } else {
                        return const SizedBox();
                      }
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Date",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      formatted.toString(),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Amount",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                            width: 40,
                            child: Text(
                              "RM",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w900),
                            )),
                        Expanded(
                          child: Container(
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink[300]!.withOpacity(0.4),
                                  offset: const Offset(2, 4),
                                  blurRadius: 2,
                                )
                              ],
                            ),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                    top: 5, bottom: 5, left: 10, right: 10),
                                filled: true,
                                hintText: "Key in amount",
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "* Please key in correct amount else it will be rejected.",
                      style: TextStyle(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Upload Receipt",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "* Only same day receipt will be approved.",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(

                        //  height: 400,
                        width: ScreenConfig.screenWidth,
                        child: const ChoosePhoto()),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 40,
                            width:ScreenConfig.blockWidth *50,
                            child: PrimaryButton(onTaps: (){
                              
                            }, text: "Submit",borderRadius:7,)),
                        const SizedBox(height: 30,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
