import 'dart:math';

import 'package:flexible_scrollbar/flexible_scrollbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suria_saba_app/configer/screen_config.dart';


import '../providers/scroller_provider.dart';
import '../views/scan/scan_page.dart';


class ScrollBarWidget extends StatefulWidget {
  const ScrollBarWidget({ Key? key,}) : super(key: key);



  @override
  _ScrollBarWidgetState createState() => _ScrollBarWidgetState();
}

class _ScrollBarWidgetState extends State<ScrollBarWidget> {

    final  _scrollController=ScrollController();
    final double thumbWidth = 10;
    final double thumbDragWidth = 10;
    final animationDuration = const Duration(milliseconds: 300);
    String _value="";
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final scanProvider=Provider.of<ScanProvider>(context,listen: false);
    scanProvider.searchItem();
  }
  @override

  Widget build(BuildContext context) {
    final scanProvider =Provider.of<ScanProvider>(context,listen:false);
    return
      Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned.fill(
              right: ScreenConfig.blockWidth * 0.75,
            child: const Align(
                alignment: Alignment.topRight,
                child: VerticalDivider(
                  color: Colors.black,
                )),
          ),
            SizedBox(
              width: ScreenConfig.blockWidth * 90,
              child: FlexibleScrollbar(
                controller: _scrollController,
                alwaysVisible: true,
                autoPositionLabel: true,
                jumpOnScrollLineTapped: true,

                scrollThumbBuilder: (ScrollbarInfo info) {
                  return Container(
                    height: 15,
                    width: 15,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.pinkAccent),);
                },


                child: ListView.builder(
                  shrinkWrap: true,
                  controller: _scrollController,
                  itemCount: scanProvider.searchData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        _value=scanProvider.searchData[index];
                        scanProvider.selectedItem(_value);




                        // Navigator.pop(context);

                      },
                      child: ListTile(
                        title: Text('${scanProvider.searchData[index]}'),
                      ),
                    );
                  },
                ),
              ),
            ),

          ],
        ),
      );
  }
}