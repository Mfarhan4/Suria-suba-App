import 'package:flutter/material.dart';

class ScannerProvider extends ChangeNotifier {
  bool _message = false;

  messageSitter(bool msg) {
    _message = msg;
  }

  bool get message => _message;
}
