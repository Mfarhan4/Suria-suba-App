import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:suria_saba_app/configer/screen_config.dart';



class ScannerWidget extends StatelessWidget {
  const ScannerWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {


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

                ),
              ),
              // IconButton(
              //   color: Colors.orange,
              //   icon: ValueListenableBuilder(
              //     valueListenable: _controller.cameraFacingState,
              //     builder: (context, state, child) {
              //       if (state == null) {
              //         return const Icon(Icons.camera_front);
              //       }
              //       switch (state as CameraFacing) {
              //         case CameraFacing.front:
              //           return const Icon(Icons.camera_front);
              //         case CameraFacing.back:
              //           return const Icon(Icons.camera_rear);
              //       }
              //     },
              //   ),
              //   iconSize: 32.0,
              //   onPressed: () => _controller.switchCamera(),
              // ),
              // IconButton(
              //   color: Colors.black,
              //   icon: const Icon(Icons.image),
              //   iconSize: 32.0,
              //   onPressed: () async {
              //     final ImagePicker _picker = ImagePicker();
              //     // Pick an image
              //     final XFile? image = await _picker.pickImage(
              //       source: ImageSource.gallery,
              //     );
              //     if (image != null) {
              //       if (await _controller.analyzeImage(image.path)) {
              //        // if (!mounted) return;
              //         ScaffoldMessenger.of(context).showSnackBar(
              //           const SnackBar(
              //             content: Text('Barcode found!'),
              //             backgroundColor: Colors.green,
              //           ),
              //         );
              //       } else {
              //       //  if (!mounted) return;
              //         ScaffoldMessenger.of(context).showSnackBar(
              //           const SnackBar(
              //             content: Text('No barcode found!'),
              //             backgroundColor: Colors.red,
              //           ),
              //         );
              //       }
              //     }
              //   },
              // ),
              // IconButton(
              //   color: Colors.pinkAccent,
              //   icon: ValueListenableBuilder(
              //     valueListenable: _controller.torchState,
              //     builder: (context, state, child) {
              //       if (state == null) {
              //         return const Icon(
              //           Icons.flash_off,
              //           color: Colors.grey,
              //         );
              //       }
              //       switch (state as TorchState) {
              //         case TorchState.off:
              //           return const Icon(
              //             Icons.flash_off,
              //             color: Colors.grey,
              //           );
              //         case TorchState.on:
              //           return const Icon(
              //             Icons.flash_on,
              //             color: Colors.yellow,
              //           );
              //       }
              //     },
              //   ),
              //   iconSize: 32.0,
              //   onPressed: () => _controller.toggleTorch(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
