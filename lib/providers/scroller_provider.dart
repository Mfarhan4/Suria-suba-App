import 'package:flutter/cupertino.dart';

class ScanProvider extends ChangeNotifier {
  List  _searchdata=[];
  String _item="";
  bool _isSearchVisible = false;


  searchItem(){
     _searchdata=List.generate(50, (index) => "Item NO $index");

  }


  String selectedItem(String value,){
    _item=value;
    _isSearchVisible = false;
    notifyListeners();
    return value;


  }

  toggleSerch() {

   _isSearchVisible ? _isSearchVisible = false : _isSearchVisible = true;
    debugPrint(_isSearchVisible.toString());
   notifyListeners();
  }

  bool get isSearchVisible => _isSearchVisible;
  List get searchData => _searchdata;
  String get item => _item;
}