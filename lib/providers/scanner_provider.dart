import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerProvider extends ChangeNotifier {
  bool _message = false;
  final MobileScannerController _controller =
      MobileScannerController(facing: CameraFacing.back, torchEnabled: false);

  scanCode() {
    MobileScanner(
        allowDuplicates: false,
        controller: _controller,
        onDetect: (barcode, args) {
          if (barcode.rawValue == null) {
            _message =false;
            // Navigator.push(NavigationService.navigatorKey.currentContext!, MaterialPageRoute(builder: (_) => const MessageWidget(text1: "Opps!",  text2: "Failed", text3: "Redemption Failed!", photo: "assets/images/failure.png")));
            //debugPrint('Failed to scan Barcode');
          } else {
            _message=true;
            final String code = barcode.rawValue!;
            debugPrint('Barcode found! $code');
            //Navigator.push(NavigationService.navigatorKey.currentContext!, MaterialPageRoute(builder: (_)=> const MessageWidget(text1: "Thank you!", text2: 'Success', text3: "Redemption Sucessful!", photo: "assets/images/success.png")));
          }
        });
  }

  bool get message => _message;
}
