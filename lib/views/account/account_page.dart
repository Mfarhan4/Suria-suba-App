import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/suba_icon_icons.dart';
import 'package:suria_saba_app/themes/palette.dart';
import 'package:suria_saba_app/views/account/profile_page.dart';
import 'package:suria_saba_app/widgets/custom_app_bar.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

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
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        enableBackButton: false,
      ),
      body: Stack(
        children: [
          Container (
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/voucher_background.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Container(
                  height: ScreenConfig.blockHeight * 15,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/profile_background.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        CircleAvatar(
                          child: FittedBox(
                              child: Icon(
                            SubaIcon.person,
                            color: Colors.blue,
                            size: 50,
                          )),
                          radius: 30,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Hi, User Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: ScreenConfig.blockHeight * 61,
                  width: ScreenConfig.blockWidth *80,
                  child: Column(

                    children: [
                      const SizedBox(height: 70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Column(
                          children: [
                            FittedBox(
                              child:  InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(border: Border.all(width: 1,color:Palette.color),borderRadius: BorderRadius.circular(14),gradient:LinearGradient(colors: [Colors.brown[100]!,Colors.white54,]),),
                                  height: ScreenConfig.blockWidth * 14,
                                  width: ScreenConfig.blockWidth * 14,
                                  child:Center(child: FittedBox(child:  Icon(SubaIcon.person,color: Palette.color,size: 30,)),),

                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text("Profile")
                          ],
                        ),
                        Column(
                          children: [
                            FittedBox(
                              child: Container(
                                decoration: BoxDecoration(border: Border.all(width: 1,color:Palette.color),borderRadius: BorderRadius.circular(14),gradient:LinearGradient(colors: [Colors.brown[100]!,Colors.white54,]),),
                                height: ScreenConfig.blockWidth * 14,
                                width: ScreenConfig.blockWidth * 14,
                                child:Center(child: FittedBox(child:  Icon(SubaIcon.gift,color: Palette.color,size: 30,)),),

                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text("Redemption")
                          ],
                        ),
                        Column(
                          children: [
                            FittedBox(
                              child: Container(
                                decoration: BoxDecoration(border: Border.all(width: 1,color:Palette.color),borderRadius: BorderRadius.circular(14),gradient:LinearGradient(colors: [Colors.brown[100]!,Colors.white54,]),),
                                height: ScreenConfig.blockWidth * 14,
                                width: ScreenConfig.blockWidth * 14,
                                child:Center(child: FittedBox(child:  Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(SubaIcon.ticket,color: Palette.color,size: 20,),
                                )),),

                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text("My Vouchers")
                          ],
                        ),
                        Column(
                          children: [
                            FittedBox(
                              child: Container(
                                decoration: BoxDecoration(border: Border.all(width: 1,color:Palette.color),borderRadius: BorderRadius.circular(14),gradient:LinearGradient(colors: [Colors.brown[100]!,Colors.white54,]),),
                                height: ScreenConfig.blockWidth *14,
                                width: ScreenConfig.blockWidth * 14,
                                child:Center(child: FittedBox(child:  Icon(SubaIcon.microphone,color: Palette.color,size: 30,)),),

                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text("Contact")
                          ],
                        )
                      ],),

                 const SizedBox(height: 20,),

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
                                       // debugPrint(" save $_index");
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
                                        dotsCount: photoList1.length,
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









                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              child: Align(heightFactor: 4,

                child: Container(

            decoration: BoxDecoration(

              image: const DecorationImage(
                  image: AssetImage("assets/images/voucher_background.png"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12),color: Colors.white,border: Border.all(width: 1,color:Palette.color)),
            height: ScreenConfig.blockHeight*9,
            width: ScreenConfig.blockWidth * 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  FittedBox(
                    child:  Row(
                      children: const [
                        Text("  12,345",style: TextStyle(fontSize: 33),),
                        SizedBox(width: 8,),
                        Text("Points",style: TextStyle(fontSize: 13),),
                      ],
                    ),
                  ),

                FittedBox(child:  Icon(SubaIcon.clock_timing,color: Palette.color,size: 30,))

              ],),
            ),

          ),
              ))
        ],
      ),
    );
  }
}