import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/widgets/company_name_widget.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';

import '../../themes/palette.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;


  @override
  Widget build(BuildContext context) {


    final List photos = [

      "https://images.unsplash.com/photo-1541411176641-826a375e9dd6?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFsbG9vbiUyMGdpcmx8ZW58MHx8MHx8&w=1000",


      "https://media.istockphoto.com/photos/female-programmer-working-on-new-project-picture-id1164704600?k=20&m=1164704600&s=612x612&w=0&h=uO6S8zcbm_gMZH2IHap89Yl0VhYJtt4CTs3WT2m1xfk=",


      "https://images.unsplash.com/photo-1541411176641-826a375e9dd6?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFsbG9vbiUyMGdpcmx8ZW58MHx8MHx8&w=1000",


      "https://i.pinimg.com/originals/f0/3d/83/f03d835a623bdc60dfa283d15c9fd149.jpg",


      "https://images.unsplash.com/photo-1541411176641-826a375e9dd6?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFsbG9vbiUyMGdpcmx8ZW58MHx8MHx8&w=1000",

      "https://i.pinimg.com/originals/f0/3d/83/f03d835a623bdc60dfa283d15c9fd149.jpg",

    ];
    List<Widget> photoList1 = [
      Image.network(
        "https://images.unsplash.com/photo-1541411176641-826a375e9dd6?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFsbG9vbiUyMGdpcmx8ZW58MHx8MHx8&w=1000",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://media.istockphoto.com/photos/female-programmer-working-on-new-project-picture-id1164704600?k=20&m=1164704600&s=612x612&w=0&h=uO6S8zcbm_gMZH2IHap89Yl0VhYJtt4CTs3WT2m1xfk=",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://images.unsplash.com/photo-1541411176641-826a375e9dd6?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFsbG9vbiUyMGdpcmx8ZW58MHx8MHx8&w=1000",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://i.pinimg.com/originals/f0/3d/83/f03d835a623bdc60dfa283d15c9fd149.jpg",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://images.unsplash.com/photo-1541411176641-826a375e9dd6?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFsbG9vbiUyMGdpcmx8ZW58MHx8MHx8&w=1000",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://i.pinimg.com/originals/f0/3d/83/f03d835a623bdc60dfa283d15c9fd149.jpg",
        fit: BoxFit.cover,
      ),
    ];

    ScreenConfig().init(context);

    return Scaffold(
      appBar:  CustomAppBar(enableBackButton: false,),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.png',
                ),
                fit: BoxFit.fitWidth)),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pinkAccent.withOpacity(0.3),
                                // spreadRadius: 2,
                                blurRadius: 3,
                                offset: const Offset(
                                    3, 2), // changes position of shadow
                              ),
                            ]),
                        // height: 300,

                        width: ScreenConfig.blockWidth * 85,
                        height: ScreenConfig.blockHeight * 34,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: CarouselSlider(
                              items: photoList1,
                              options: CarouselOptions(
                                autoPlay: true,
                                disableCenter: true,
                                // height: ScreenConfig.blockHeight *50,
                                viewportFraction: 1.0,
                                aspectRatio: 1,
                                enlargeCenterPage: false,

                                onPageChanged: (index, reason) {
                                  debugPrint(index.toString());
                                  setState(() {
                                    _index = index;
                                  });
                                  debugPrint(" save $_index");
                                },
                                pageSnapping: true,

                                //  height: 260
                              )),
                        ),
                      ),
                    ),
                    Positioned.fill(
                        child: Container(
                            width: ScreenConfig.screenWidth,
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DotsIndicator(
                                  dotsCount: photos.length,
                                  position: _index.toDouble(),
                                  decorator: DotsDecorator(
                                      spacing: const EdgeInsets.only(
                                          left: 3, right: 3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      activeColor: Colors.white,
                                      color: Colors.grey,
                                      size: const Size.fromRadius(6.0),
                                      activeSize: const Size.fromRadius(6.0),
                                      activeShape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0))),
                                )))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "YEAR END SALE 20-31 DEC",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: ScreenConfig.blockWidth * 85,
                  child: Divider(
                    color: Palette.color,
                    thickness: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: ScreenConfig.blockWidth * 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Happening",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Palette.color),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "See All >>   ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  // color: Colors.orange,
                  height: ScreenConfig.blockHeight * 24,
                  width: ScreenConfig.screenWidth,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5.5),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pinkAccent
                                      .withOpacity(0.25),
                                  // spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: const Offset(2,
                                      3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                image: NetworkImage("${photos[index]}"),
                                fit: BoxFit.cover,
                              )
                          ),
                          height: ScreenConfig.blockHeight * 24,
                          width: ScreenConfig.blockHeight * 24,
                        ),
                      );
                    },
                    itemCount: photos.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: ScreenConfig.blockWidth * 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Foods & Beverage",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Palette.color),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "See All >>   ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  // color: Colors.orange,
                  height: ScreenConfig.blockHeight * 24,
                  width: ScreenConfig.screenWidth,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5.5),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pinkAccent
                                      .withOpacity(0.25),
                                  // spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: const Offset(2,
                                      3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                image: NetworkImage("${photos[index]}"),
                                fit: BoxFit.cover,
                              )
                          ),
                          height: ScreenConfig.blockHeight * 24,
                          width: ScreenConfig.blockHeight * 24,
                        ),
                      );
                    },
                    itemCount: photos.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: ScreenConfig.blockWidth * 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Fashion",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Palette.color),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "See All >>   ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  // color: Colors.orange,
                  height: ScreenConfig.blockHeight * 24,
                  width: ScreenConfig.screenWidth,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5.5),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pinkAccent
                                      .withOpacity(0.25),
                                  // spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: const Offset(2,
                                      3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                image: NetworkImage("${photos[index]}"),
                                fit: BoxFit.cover,
                              )
                          ),
                          height: ScreenConfig.blockHeight * 24,
                          width: ScreenConfig.blockHeight * 24,
                        ),
                      );
                    },
                    itemCount: photos.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: ScreenConfig.blockWidth * 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Beauty & Wellness",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Palette.color),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "See All >>   ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  // color: Colors.orange,
                  height: ScreenConfig.blockHeight * 24,
                  width: ScreenConfig.screenWidth,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5.5),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pinkAccent
                                      .withOpacity(0.25),
                                  // spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: const Offset(2,
                                      3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                image: NetworkImage("${photos[index]}"),
                                fit: BoxFit.cover,
                              )
                          ),
                          height: ScreenConfig.blockHeight * 24,
                          width: ScreenConfig.blockHeight * 24,
                        ),
                      );
                    },
                    itemCount: photos.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ],
        ) ,

        ),

    );
  }
}


