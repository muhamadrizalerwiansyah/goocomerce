import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../configs/colorSchemes.dart';
import '../../controllers/home_page_controller.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({
    super.key,
    required this.c,
  });

  final HomePageController c;

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  var current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220.h,
      color: lightColorScheme.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  viewportFraction: 1.0,
                  // enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      current = index;
                    });
                  }),
              items: widget.c.imgList
                  .map((item) => SizedBox(
                        height: 195.h,
                        child: Container(
                          margin: const EdgeInsets.all(0.0),
                          child: ClipRRect(
                              child: Stack(
                            children: <Widget>[
                              Image.network(item,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width),
                            ],
                          )),
                        ),
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 15.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 0.0),
                  child: AnimatedSmoothIndicator(
                    activeIndex: current,
                    count: widget.c.imgList.length,
                    effect: ExpandingDotsEffect(
                        dotColor: colorGrey400,
                        activeDotColor: colorPrimaryMain,
                        dotWidth: 5,
                        dotHeight: 3),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
