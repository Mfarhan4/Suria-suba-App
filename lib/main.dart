

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/providers/image_provider.dart';
import 'package:suria_saba_app/providers/scroller_provider.dart';
import 'package:suria_saba_app/providers/scanner_provider.dart';
import 'package:suria_saba_app/views/bottom_bar_page.dart';
import 'package:suria_saba_app/views/login/onbording_page.dart';

import 'configer/configer.dart';

void main() async {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ImagesProvider()),
    ChangeNotifierProvider(create: (context) => ScanProvider()),
    ChangeNotifierProvider(create: (context) => ScannerProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      home:  const OnBoardingPage(),
    );
  }
}

