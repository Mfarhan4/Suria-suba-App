import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';

class ScanHistoryPage extends StatelessWidget {
  const ScanHistoryPage({Key? key}) : super(key: key);

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
                    "assets/images/voucher_main_background.png",
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
               height: ScreenConfig.blockHeight * 4,
             ),
              Container(
                height: ScreenConfig.blockHeight * 72,

                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: ScreenConfig.blockHeight * 7,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: const [
                            SizedBox(height: 5,),
                            Text(" History",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 22,color: Colors.red),),
                             SizedBox(height: 4,),
                             Divider(color: Colors.red),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: ScreenConfig.blockHeight * 64.9,

                        child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: const [
                                      ListTile(
                                        title: Text(
                                          "Bata - Pending",
                                          style: TextStyle(
                                              fontSize: 17, fontWeight: FontWeight.w800),
                                        ),
                                        subtitle: Text("10-06-2022 02:50PM"),
                                        trailing: Text(
                                          "RM125.00",
                                          style: TextStyle(
                                              fontSize: 17, fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                      Divider(
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
                  ) ,

            ],
          ),
        ),
      ),
    );
  }
}