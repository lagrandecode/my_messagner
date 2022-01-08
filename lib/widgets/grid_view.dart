import 'package:flutter/material.dart';
import 'package:my_messanger/constants/padding.dart';
import 'package:my_messanger/model/grid_view.dart';
import 'package:my_messanger/screens/cleaning.dart';
import 'package:my_messanger/screens/courier.dart';
import 'package:my_messanger/screens/delivery.dart';
import 'package:my_messanger/screens/food.dart';

class GridViewBuilder extends StatefulWidget {
  GridViewSlide slide;

  GridViewBuilder(this.slide);

  @override
  State<GridViewBuilder> createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {
  // this is where the pages are switch.
  // there are several alternative to changes pages. but this works perfectly.

  void _navigateIndex() {
    if (widget.slide.pages == 0) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Delivery(),
        ),
      );
    } else if (widget.slide.pages == 1) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Courier(),
        ),
      );
    } else if (widget.slide.pages == 2) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Food(),
        ),
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Cleaning(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigateIndex();
      },
      child: Container(
          margin: const EdgeInsets.all(10),
          height: 200,
          width: 190,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(0)),
            color: widget.slide.colorBg,
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                margin: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Image.asset(widget.slide.img),
                ),
              ),
              Text(
                widget.slide.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: widget.slide.txtColor),
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
