import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/widgets/custom_appBar.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SizedBox(

        height: ScreenConfig.screenHeight - 15.7,
        width: ScreenConfig.screenWidth,

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(child: Container(color: Colors.pink,))
          ],
        ),
      )
    );
  }
}
