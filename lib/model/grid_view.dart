import 'package:flutter/material.dart';



class GridViewSlide {
  String name;
  String img;
  String desc;

  GridViewSlide(this.name, this.img, this.desc);

  static List<GridViewSlide> generateGridViewSlide(){
    return [
      GridViewSlide("Delivery Guy", "assets/images/delivery", "Ready to delivery to your door step"),
      GridViewSlide("Courier", "assets/images/courier", "Ready to delivery to your door step"),
      GridViewSlide("Order for Food", "assets/images/food", "Ready to delivery to your door step"),
      GridViewSlide("Cleaning Service", "assets/images/artisan", "Ready to delivery to your door step"),

    ];
  }
}