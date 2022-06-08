import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/themes/palette.dart';
import 'package:suria_saba_app/views/scan/scan_page.dart';
import 'package:suria_saba_app/views/voucher/voucher_page.dart';

import 'dictory/dictory_page.dart';
import 'home/home_page.dart';

class BottomBArPage extends StatefulWidget {
  const BottomBArPage({Key? key}) : super(key: key);

  @override
  State<BottomBArPage> createState() => _BottomBArPageState();
}

class _BottomBArPageState extends State<BottomBArPage> {
    final PersistentTabController _controller=PersistentTabController(initialIndex: 0);
  final List<Widget> _screen=[
    const HomePage(),
    const DirectoryPage(),
    const ScanPage(),
    const VoucherPage(),
    const Center(child: Text("Account"))

  ];
  final List<PersistentBottomNavBarItem>  _item =[

    PersistentBottomNavBarItem(icon: const Icon(SubaIcon.home),title: 'Home',
      inactiveColorPrimary: Colors.grey,
      activeColorPrimary: Palette.color


    ),
    PersistentBottomNavBarItem(icon: const Icon(SubaIcon.location),title: 'Dictory',
   inactiveColorPrimary: Colors.grey,
        activeColorPrimary: Palette.color

    ),
    PersistentBottomNavBarItem(icon: const Icon(SubaIcon.camera ),title: 'Scan',
      inactiveColorPrimary: Colors.grey,
        activeColorPrimary: Palette.color),
    PersistentBottomNavBarItem(icon: const Icon(SubaIcon.ticket_v,),title: '   Voucher',
      inactiveColorPrimary: Colors.grey,
        activeColorPrimary: Palette.color),
    PersistentBottomNavBarItem(icon: const Icon(SubaIcon.person),title: 'Account',
      inactiveColorPrimary: Colors.grey,
        activeColorPrimary: Palette.color),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:PersistentTabView(
        context,
        controller: _controller,
        navBarStyle: NavBarStyle.style6,



        screens:_screen,
      items: _item,

    ),);
  }
}
