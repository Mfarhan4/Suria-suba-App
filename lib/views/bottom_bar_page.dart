import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'directory_page.dart';
import 'home_page.dart';

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
    const Center(child: Text("Scan")),
    const Center(child: Text("Vouchers")),
    const Center(child: Text("Account"))

  ];
  final List<PersistentBottomNavBarItem>  _item =[

    PersistentBottomNavBarItem(icon: const Icon(Icons.add_to_home_screen),title: 'Home',
      inactiveColorPrimary: Colors.grey,
      activeColorPrimary: Colors.pinkAccent


    ),
    PersistentBottomNavBarItem(icon: const Icon(Icons.pin_drop_sharp),title: 'Dictory',
   inactiveColorPrimary: Colors.grey,
        activeColorPrimary: Colors.pinkAccent

    ),
    PersistentBottomNavBarItem(icon: const Icon(Icons.document_scanner ),title: 'Scan',
      inactiveColorPrimary: Colors.grey,
        activeColorPrimary: Colors.pinkAccent),
    PersistentBottomNavBarItem(icon: const Icon(Icons.wallet_giftcard),title: 'Voucher',
      inactiveColorPrimary: Colors.grey,
        activeColorPrimary: Colors.pinkAccent),
    PersistentBottomNavBarItem(icon: const Icon(Icons.person),title: 'Account',
      inactiveColorPrimary: Colors.grey,
        activeColorPrimary: Colors.pinkAccent),

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
