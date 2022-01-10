

import 'package:flutter/material.dart';


class CarouselImage{
  String name;
  String img;
  String address;
  String desc;


  CarouselImage(this.name, this.img, this.address, this.desc);

  static List<CarouselImage> generateCarousel(){
    return [
      CarouselImage("Domino's Pizza", "assets/images/img1.jpeg", "192, Awolowo Road Ikoyi Lagos", "World's largest & best pizza in Nigeria! Delivering hot, fresh pizzas to your doorstep within 30mins and take away in all our stores in Lagos."),
      CarouselImage("KFC", "assets/images/img2.jpeg", "192, Awolowo Road Ikoyi Lagos", "World's largest & best pizza in Nigeria! Delivering hot, fresh pizzas to your doorstep within 30mins and take away in all our stores in Lagos."),
      CarouselImage("Domino's Pizza", "assets/images/img3.jpeg", "192, Awolowo Road Ikoyi Lagos", "World's largest & best pizza in Nigeria! Delivering hot, fresh pizzas to your doorstep within 30mins and take away in all our stores in Lagos."),
      CarouselImage("Domino's Pizza", "assets/images/img4.jpeg", "192, Awolowo Road Ikoyi Lagos", "World's largest & best pizza in Nigeria! Delivering hot, fresh pizzas to your doorstep within 30mins and take away in all our stores in Lagos."),
      CarouselImage("Domino's Pizza", "assets/images/img5.jpeg", "192, Awolowo Road Ikoyi Lagos", "World's largest & best pizza in Nigeria! Delivering hot, fresh pizzas to your doorstep within 30mins and take away in all our stores in Lagos."),

    ];
  }
}