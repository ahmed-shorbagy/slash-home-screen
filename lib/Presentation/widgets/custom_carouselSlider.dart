import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  _CustomCarouselSliderState createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  final List<String> images = [
    Assets.iconsBlackFriday,
    Assets.iconsBlackFriday,
  ];

  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(i),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            );
          }).toList(),
          carouselController: _controller,
          options: CarouselOptions(
            viewportFraction: 0.96,
            padEnds: false,
            enableInfiniteScroll: false,
            height: 150.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 10),
        AnimatedSmoothIndicator(
          activeIndex: _currentIndex,
          count: images.length,
          effect: const ExpandingDotsEffect(
              activeDotColor: kPrimaryColor, dotHeight: 10, dotWidth: 7),
          onDotClicked: (index) {
            _controller.animateToPage(index);
          },
        ),
      ],
    );
  }
}
