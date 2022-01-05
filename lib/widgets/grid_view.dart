import 'package:flutter/material.dart';
import 'package:my_messanger/constants/padding.dart';
import 'package:my_messanger/model/grid_view.dart';


class GridViewBuilder extends StatelessWidget {
  GridViewSlide slide;


  GridViewBuilder(this.slide);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.all(10),
      height: 200,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(0)),
        color: slide.colorBg,
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            margin: const EdgeInsets.only(top: 30),
            child: Center(
              child: Image.asset(slide.img),
            ),
          ),
          Text(slide.name, style: TextStyle(fontWeight: FontWeight.bold, color: slide.txtColor), textAlign: TextAlign.center,)
        ],
      )
    );
  }
}
