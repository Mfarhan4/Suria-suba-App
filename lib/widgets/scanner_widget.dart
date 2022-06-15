import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/providers/scanner_provider.dart';
import 'message_widget.dart';



class ScannerWidget extends StatelessWidget {
  const ScannerWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
final scannerprovider=Provider.of<ScannerProvider>(context);
final MobileScannerController _controller =
MobileScannerController(facing: CameraFacing.back, torchEnabled: false);

    return  Scaffold(
      appBar: AppBar(title: const Text('Scan QR Code To Redeem'),backgroundColor: Colors.white,),
      body: Container(
        color: Colors.black,
        height: ScreenConfig.screenHeight,
        width: ScreenConfig.screenWidth,
        child: FittedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  color: Colors.white,
                  height:ScreenConfig.blockWidth * 100,
                  width: ScreenConfig.blockWidth * 100,
                  child: MobileScanner(
                      allowDuplicates: false,
                      controller: _controller,
                      onDetect: (barcode, args) {
                        debugPrint("Scanner is working");
                        if (barcode.rawValue == null) {
                         // _message =false;
                           Navigator.push(context, MaterialPageRoute(builder: (_) => scannerprovider.message? MessageWidget(text1: "Opps!",  text2: "Failed", text3: "Redemption Failed!", photo: "assets/images/failure.png"):   MessageWidget(text1: "Opps!",  text2: "Failed", text3: "Voucher Redemptions Failed!", photo: "assets/images/failure.png")));
                          //debugPrint('Failed to scan Barcode');
                        } else {
                         // _message=true;
                          final String code = barcode.rawValue!;
                          debugPrint('Barcode found! $code');
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> scannerprovider.message? MessageWidget(text1: "Thank you!", text2: 'Success', text3: "Redemption Sucessful!", photo: "assets/images/success.png"): MessageWidget(text1: "Thank you!", text2: 'Success', text3: "Voucher Has Been Redeemed!", photo: "assets/images/success.png")));
                        }
                        return;
                      }),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
