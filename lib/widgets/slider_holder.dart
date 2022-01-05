import 'package:flutter/material.dart';
import 'package:my_messanger/model/grid_view.dart';
import 'package:my_messanger/widgets/grid_view.dart';


class SliderHolder extends StatelessWidget {
  final slides = GridViewSlide.generateGridViewSlide();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView.builder(
        itemCount: slides.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (_, index)=> GridViewBuilder(slides[index],),),

    );
  }
}
