import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_messanger/constants/colors.dart';
import 'package:my_messanger/constants/padding.dart';
import 'package:my_messanger/model/carousel.dart';
import 'package:my_messanger/widgets/carousel_holder.dart';

class CarouselSlide extends StatefulWidget {
  @override
  State<CarouselSlide> createState() => _CarouselSlideState();
}

class _CarouselSlideState extends State<CarouselSlide> {
  CarouselController _controller = CarouselController();
  int _currentSlide = 0;

  // these are the image used for the carousel slider. the images can also be embedded in the model of carousel
  final List<String> imgurl = [
    "assets/images/img1.jpeg",
    "assets/images/img2.jpeg",
    "assets/images/img3.jpeg",
    "assets/images/img4.jpeg",
    "assets/images/img5.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: marginLeftRightTop18,
          height: 150,
          child: Expanded(
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentSlide = index;
                    });
                  }),
              items: imgurl
                  .map(
                    (e) => Container(
                      //
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          e,
                          fit: BoxFit.cover,
                        ),
                      ),
                      //
                    ),
                  )
                  .toList(),

            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children:
            imgurl.asMap().entries.map((e) => (GestureDetector(
              onTap: ()=> _controller.animateToPage(e.key),
              child: Container(
                height: _currentSlide == e.key? 3 : 2,
                width: _currentSlide == e.key? 20: 10,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: _currentSlide == e.key? Colors.red : Colors.red[100],
                ),
              ),
            ))).toList()
        )
      ],
    );
  }
}
