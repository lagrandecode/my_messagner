import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_messanger/homepage.dart';
import 'package:my_messanger/model/onboard_screen.dart';
import 'package:my_messanger/screens/login_register_link.dart';

class OnBoardScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  List<Screen> screen = Screen.generateScreen();
  int swipeIndex = 0;

 PageController _controller = PageController();


  @override
  void initState() {
    // TODO: implement initState
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  swipeIndex = index;
                });
              },
              itemCount: screen.length,
              itemBuilder: (_, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: SvgPicture.asset(screen[index].img),
                  ),
                  Text(
                    screen[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        screen[index].description,
                        style: const TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                screen.length,
                (index) => _buildDot(context, index),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 50, top: 25),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(2),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: TextButton(
              onPressed: () {
                if (swipeIndex == screen.length - 1) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => LoginRegisterLink(),
                    ),
                  );
                }
                else{
                  _controller.nextPage(
                      duration: Duration(microseconds: 60),
                      curve: Curves.ease);

                }
              },
              child: Text(
                swipeIndex == screen.length - 1 ? "Continue" : "Next",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildDot(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: swipeIndex == index ? 5 : 3,
      width: swipeIndex == index ? 20 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        shape: BoxShape.rectangle,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
