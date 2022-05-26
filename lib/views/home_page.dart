import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with TickerProviderStateMixin{
  final int _numPages = 5;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(

      duration: const Duration(milliseconds: 20),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 12.0,
      width: isActive ? 12.0 : 12.0,
      curve: Curves.fastLinearToSlowEaseIn,
      decoration: BoxDecoration(
        color: isActive ? Colors.pinkAccent : Colors.brown,
        borderRadius:  const BorderRadius.all( Radius.circular(30),),
      ),
    );
  }

  Widget getView(String text, String image, BuildContext context) {
    return Column(
      children: [
       const SizedBox(height: 40,),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
              image: DecorationImage(

                image: NetworkImage(
                  image,
                  

                ),
                fit: BoxFit.cover
                //  height: MediaQuery.of(context).size.height,


                ),
              ),
          ),

        ),
        Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style:
                      const TextStyle(fontSize: 55, color: Colors.pinkAccent),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: Text(
                    "Swipe Next ▶",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child:
          Stack(
            children:[
              Padding(
                padding: const EdgeInsets.all(26.0),
                child: PageView(
                controller: _pageController,

                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [

                  getView(
                      "strawberry",
                      "https://images.everydayhealth.com/images/ordinary-fruits-with-amazing-health-benefits-05-1440x810.jpg",
                      context),
                  getView("Orange",
                      "http://printmeposter.com/blog/wp-content/uploads/2015/11/A-Christmas-Centerpiece-with-Fruits.jpg",
                      context),
                  getView(
                      "Apple",
                      "https://www.wallpaperup.com/uploads/wallpapers/2014/03/01/282450/83656c7dcf5b096371f4c3a2355e8a0a.jpg",
                      context),
                  getView(
                      "Grips",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN0iKkzPcqtYb6LmatJT2yeYije6LBEuNMPQ&usqp=CAU",
                      context),
                  getView(
                      "Mango",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3_QkGiPhtx7kZ5lkoEIc-uHW18YCrBR0kww&usqp=CAU",
                      context),
                ],
            ),
              ),
            Positioned(child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
              child: SizedBox(
                  height: 46,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  )),
            ),)
            ]
          ),
        ),
      ),
    );
  }
}
