import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';

import '../../suba_icon_icons.dart';
import '../../themes/palette.dart';

class AccountHistoryPage extends StatelessWidget {
  const AccountHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        enableBackButton: true,
      ),
      body: SizedBox(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/voucher_background.png",
                  ),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: ScreenConfig.safeHeight * 15,
                  child: Center(
                    child: SizedBox(
                      height: ScreenConfig.safeHeight * 9,
                      child: Container(
                        // height:ScreenConfig.blockHeight * 10,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(color: Colors.grey, blurRadius: 10)
                            ],
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/voucher_background.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            border: Border.all(width: 1, color: Palette.color)),
                        // height: ScreenConfig.blockHeight*10,
                        width: ScreenConfig.blockWidth * 80,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FittedBox(
                                child: Row(
                                  children: const [
                                    Text(
                                      "  12,345",
                                      style: TextStyle(fontSize: 33),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "pts",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenConfig.safeHeight * 71,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: ScreenConfig.safeHeight * 10,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "POINTS HISTORY",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 22,
                                      color: Palette.color),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Divider(color: Colors.red),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ScreenConfig.safeHeight * 61,
                            child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      ListTile(
                                        title: const Text(
                                          "09-06-2022 02:50PM",
                                          style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        leading: Icon(
                                          SubaIcon.plus,
                                          color: Palette.color,
                                        ),
                                        trailing: const Text(
                                          "+350",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.black,
                                      )
                                    ],
                                  );
                                },
                                itemCount: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
