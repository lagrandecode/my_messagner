import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_messanger/constants/colors.dart';
import 'package:my_messanger/constants/padding.dart';

import 'package:my_messanger/widgets/carousel_slide.dart';
import 'package:my_messanger/widgets/grid_view.dart';
import 'package:my_messanger/widgets/home_side_drawer.dart';
import 'package:my_messanger/widgets/slider_holder.dart';

class Homepage extends StatefulWidget {
  var dateTime;


  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  //initialising date and time
  var dateTime;
  var formattedDateTime;
  var currentYear;
  var formattedYear;
  var greetings;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateTime = DateTime.now();
    formattedDateTime = DateFormat('MMM d, yyyy | EEEEEE').format(dateTime);
    currentYear = DateTime.now().year;
    formattedYear = DateFormat.YEAR;
    greetings = greetingMessage();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: marginLeft18,
              child: Text(
                "${formattedDateTime}",
                style: style1,
              ),
            ),
            Container(
              margin: marginLeft18,
              // the animatedtestkit is good for UI but it makes the computer slow

              child: AnimatedTextKit(
                animatedTexts: [TyperAnimatedText("Hello, Oluwaseun",textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Theme.of(context).primaryColor), speed: const Duration(milliseconds: 200),),],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 200),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),

              // child: Text(
              //   "Hello, Oluwaseun",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              // ),
            ),
            Container(
              margin: marginLeft18,
              child: Text("Good ${greetings} wash your hands ????"),
            ),
            CarouselSlide(),
            SizedBox(height: 10,),
            SliderHolder(),
          ],
        ),
      ),
    );
  }
  // this is where the greetings was inintialise

  String greetingMessage(){
    var hour = DateTime.now().hour;
    if( hour < 12){
      return "morning";
    }
    if( hour < 17){
      return "afternoon";
    }
    return "evening";
  }


  // this is the method for the appbar, so if
// you want to change anything on the appbar then change is here.

  AppBar _buildAppBar() => AppBar(
        backgroundColor: ktransparent,
        elevation: 0,
        leading: _buildIconButton(Icons.menu_rounded),
        actions: [
          _buildIconButton(
            Icons.notification_add_outlined,
            back: false,
          ),
        ],
      );

  IconButton _buildIconButton(IconData icon, {bool back = true}) => IconButton(
        onPressed: back
            ? () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SideDrawer(),
                  ),
                )
            : null,
        icon: Icon(
          icon,
          size: 25,
          color: kblack,
        ),
      );
}
