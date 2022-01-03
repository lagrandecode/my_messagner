import 'package:flutter/material.dart';
import 'package:my_messanger/constants/colors.dart';
import 'package:my_messanger/constants/padding.dart';
import 'package:my_messanger/model/carousel.dart';

// this define the carousel in the main interface

class CarouselHolder extends StatelessWidget {
  final CarouselImage carouselImage;


  CarouselHolder(this.carouselImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginLeftRightTop18,
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: kgrey,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: Image.asset(carouselImage.img, fit: BoxFit.cover,),
      ),
    );
  }
}
