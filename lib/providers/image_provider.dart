
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';


class ImagesProvider extends ChangeNotifier {
   XFile? _allSelectedImages;

  final _image = ImagePicker();

  chooseGallery() async {
    try {
      Future.delayed(Duration.zero);
      XFile?  galleryImage= await _image.pickImage(source: ImageSource.gallery);
     // List<XFile?>? gallery = await _image.pickMultiImage(imageQuality: 80);
      //debugPrint("${(File(gallery!.path).lengthSync())}");
      // debugPrint(
      //  " size: ${DateUtility.getFileSizeString(bytes: gallery!.first!.path.length)}");
      // for (var i in gallery!) {
      //   int single = File(i!.path).lengthSync();
      //   debugPrint("$single b");
      //   debugPrint("${single / (1024 * 1024)} mb");
      // }

      _allSelectedImages=galleryImage;
      debugPrint(_allSelectedImages.toString());

      // debugPrint("${galleryImage.runtimeType}");
    } catch (e, st) {
      debugPrint("chooseGallery  error $e $st");
    } finally {
      notifyListeners();
    }
  }

  removePhoto() {
    try {
      _allSelectedImages=null;
    } catch (e, st) {
      debugPrint("remove error $e $st");
    } finally {
      notifyListeners();
    }
  }

  chooseCamera() async {
    try {
      XFile? cameraImage = await _image.pickImage(
        source: ImageSource.camera,
        imageQuality: 80,
      );
      debugPrint("${(File(cameraImage!.path).lengthSync())}");
      if (cameraImage == null) {
      } else {
        _allSelectedImages=cameraImage;
      }
    } catch (e, st) {
      debugPrint("chooseCamera $e $st");
    } finally {
     // _allSelectedImages=null;
      notifyListeners();
    }
  }








  XFile? get images => _allSelectedImages;
}
