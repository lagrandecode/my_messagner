import 'package:flutter/material.dart';
import 'package:my_messanger/constants/colors.dart';

class GridViewSlide {
  String name;
  String img;
  String desc;
  Color colorBg;
  Color txtColor;

  GridViewSlide(this.name, this.img, this.desc, this.colorBg, this.txtColor);

  static List<GridViewSlide> generateGridViewSlide() {
    return [
      GridViewSlide(
        "Delivery Guy",
        "assets/images/delivery1.png",
        "Ready to delivery to your door step",
        kBg1,
        Color(0xff5e92e3),
      ),
      GridViewSlide(
        "Book a Courier",
        "assets/images/courier.png",
        "Ready to delivery to your door step",
        kBg2,
        Color(0xffee73b8),
      ),
      GridViewSlide(
        "Order for Food",
        "assets/images/food.png",
        "Ready to delivery to your door step",
        kBg3,
        Color(0xff7f40f7),
      ),
      GridViewSlide(
        "Cleaning Service",
        "assets/images/artisan.png",
        "Ready to delivery to your door step",
        kBg4,
        Color(0xff16ae5d),
      ),
    ];
  }
}
