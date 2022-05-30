import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suria_saba_app/configer/screen_config.dart';
import 'package:suria_saba_app/widgets/company_name_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {




    List<Widget> photos = [
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
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              color: Colors.pink,
            ),
            Positioned.fill(
              top: ScreenConfig.topPadding,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                height: ScreenConfig.screenHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: ScreenConfig.screenWidth,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey, //New
                              blurRadius: 15.0,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 9,
                          ),
                          CompanyName(
                            nameColor: Colors.pinkAccent,
                            titleSize: 10,
                            nameSize: 35,
                            titleColor: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Column(
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
                                          color: Colors.pinkAccent.withOpacity(0.1),
                                         // spreadRadius: 2,
                                          blurRadius: 7,
                                          offset: const Offset(0, 0), // changes position of shadow
                                        ),
                                      ]),
                                  // height: 300,
                                  width: ScreenConfig.screenWidth,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: CarouselSlider(
                                        items: photos,
                                        options: CarouselOptions(
                                         // autoPlay: true,
                                          disableCenter: true, height: 250,
                                          viewportFraction: 1.0,
                                          aspectRatio: 1,
                                          enlargeCenterPage: false,
                                          // initialPage: _index,

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
                                      //padding: const EdgeInsets.only(left: 50,right: 40),
                                      // height: ScreenConfig.screenHeight,
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
                                                    borderRadius: BorderRadius
                                                        .circular(12)),
                                                activeColor: Colors.white,
                                                color: Colors.grey,
                                                size:
                                                    const Size.fromRadius(10.0),
                                                activeSize:
                                                    const Size.fromRadius(10.0),
                                                activeShape:
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    12.0))),
                                          )))),
                              Positioned.fill(

                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(

                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children:  [
                                          InkWell(

                                              onTap: (){
                                                if(_index>0) {


                                                setState(() {
                                                  _index--;
                                                });}
                                              },
                                              child: const Text("<",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 35),)),
                                          InkWell(

                                              onTap: (){
                                                if(_index<photos.length -1) {


                                                  setState(() {
                                                    _index++;
                                                  });}
                                              },


                                              child: const Text(">",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 35),)),
                              ],),
                                   ))
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
                          const Divider(
                            color: Colors.pink,
                            thickness: 1.5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Happening",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pinkAccent),
                              ),
                              Text(
                                "See All >>",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      // color: Colors.orange,
                      height: 135,
                      width: ScreenConfig.screenWidth,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                               // decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)) ,
                                height:ScreenConfig.blockHeight * 44 ,
                                // height: 195,
                                 width: ScreenConfig.blockWidth * 44,
                                //  width: ScreenConfig.screenWidth,
                                child: Image.network(
                                    "https://t3.ftcdn.net/jpg/02/65/60/80/360_F_265608067_Nth2hs7Ri68NZBgHHhGuWIxaP6Z1m170.jpg"),
                              ),
                            ),
                          );
                        },
                        itemCount: photos.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
