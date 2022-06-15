import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/providers/scanner_provider.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';
import 'package:suria_saba_app/widgets/custom_button_widget.dart';
import 'package:suria_saba_app/widgets/scanner_widget.dart';

class RedemptionProductViewPage extends StatefulWidget {
  const RedemptionProductViewPage({Key? key}) : super(key: key);

  @override
  State<RedemptionProductViewPage> createState() =>
      _RedemptionProductViewPageState();
}

class _RedemptionProductViewPageState extends State<RedemptionProductViewPage> {
  @override
  Widget build(BuildContext context) {
    final scannerProvider= Provider.of<ScannerProvider>(context,listen:false);
    return Scaffold(
      appBar: CustomAppBar(
        enableBackButton: true,
      ),
      body: Container(
        //  height: ScreenConfig.screenHeight,
        width: ScreenConfig.screenWidth,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/voucher_background.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: ScreenConfig.safeHeight * 50,
                width: ScreenConfig.safeHeight * 50,
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
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Water Bottle",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Text(
              "100 points",
            ),
            const Expanded(
                child: Divider(
              color: Colors.white,
            )),
            SizedBox(
                height: 30,
                width: ScreenConfig.blockWidth * 50,
                child: PrimaryButton(
                  onTaps: () {
                            scannerProvider.messageSitter(true);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ScannerWidget()));
                  },
                  text: '  Redeem Now',
                  borderRadius: 7,
                  icon: SubaIcon.scan,
                )),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
