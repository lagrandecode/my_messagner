import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_messanger/constants/colors.dart';
import 'package:my_messanger/widgets/home_side_drawer.dart';

class Homepage extends StatefulWidget {
  static DateTime dateToday =
      DateTime(DateTime.now().day, DateTime.now().month, DateTime.now().year);


  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(""),
          ],
        ),
      ),
    );
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
