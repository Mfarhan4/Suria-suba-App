import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


import '../themes/palette.dart';
import 'login/before_login_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage>
    with TickerProviderStateMixin {
  final int _numPages = 3;
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
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
    );
  }

  Widget getView(String text, String image, BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                  image: AssetImage(
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
                  style: GoogleFonts.openSans(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Palette.color.withOpacity(0.35),
                      textStyle: const TextStyle(fontStyle: FontStyle.italic),
                  ),
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
                child: Center(
                  child: InkWell(
                    onTap: () {
                      if (_currentPage == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const BeforeLoginPage()));
                      }
                    },
                    child: const Text(
                      "Swipe Next ▶",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
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
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Stack(children: [
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
                  getView("Shop", "assets/images/shoping.png", context),
                  getView("Orange", "assets/images/dining.png", context),
                  getView("Enjoy", "assets/images/cinema.png", context),
                ],
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
                child: SizedBox(
                    height: 46,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
