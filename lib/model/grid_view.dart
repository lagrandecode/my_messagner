import 'package:flutter/material.dart';
import 'package:my_messanger/constants/colors.dart';

class GridViewSlide {
  String name;
  String img;
  String desc;
  Color colorBg;

  GridViewSlide(this.name, this.img, this.desc, this.colorBg);

  static List<GridViewSlide> generateGridViewSlide() {
    return [
      GridViewSlide(
        "Delivery Guy",
        "assets/images/delivery1.png",
        "Ready to delivery to your door step",
        kBg1,
      ),
      GridViewSlide("Book a Courier", "assets/images/courier.png",
          "Ready to delivery to your door step", kBg2),
      GridViewSlide("Order for Food", "assets/images/food.png",
          "Ready to delivery to your door step", kBg3),
      GridViewSlide("Cleaning Service", "assets/images/artisan.png",
          "Ready to delivery to your door step", kBg4),
    ];
  }
}
