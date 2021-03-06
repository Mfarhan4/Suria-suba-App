import 'package:flutter/material.dart';

class ScreenConfig {
  static late MediaQueryData? _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockWidth;
  static late double blockHeight;
  static late double topPadding;
  static late double staticScreenWidth;
  static late double bodyHeight;
  static late double bodyWidth;

  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeWidth;
  static late double safeHeight;

  void init(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    _mediaQueryData = MediaQuery.of(context);
    if (orientation == Orientation.portrait) {
      screenWidth = _mediaQueryData!.size.width;
      screenHeight = _mediaQueryData!.size.height;
    } else {
      screenWidth = _mediaQueryData!.size.height;
      screenHeight = _mediaQueryData!.size.width;
    }
    staticScreenWidth = _mediaQueryData!.size.width;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;

    _safeAreaHorizontal = (_mediaQueryData?.padding.left ?? 0) +
        (_mediaQueryData?.padding.right ?? 0);
    _safeAreaVertical = (_mediaQueryData?.padding.top ?? 0) +
        (_mediaQueryData?.padding.bottom ?? 0);
    safeWidth = (screenWidth - _safeAreaHorizontal) / 100;
    safeHeight =
        (screenHeight - _safeAreaVertical - AppBar().preferredSize.height) /
            100;
    bodyWidth = (screenWidth - _safeAreaHorizontal);
    bodyHeight =
        (screenHeight - _safeAreaVertical - AppBar().preferredSize.height);
    if (_mediaQueryData != null) {
      topPadding = _mediaQueryData!.padding.top;
    } else {
      topPadding = 0;
    }
  }
}
