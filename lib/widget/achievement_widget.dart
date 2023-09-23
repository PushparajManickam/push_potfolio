import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/model/achievement_model.dart';
import 'package:push_potfolio/widget/title_widget.dart';

import 'achievement_card.dart';

class AchievementWidget extends StatelessWidget {
  AchievementWidget({super.key});
  final List<AchievementModel> _myAchievementList = [
    AchievementModel(
      titleName: "Hackerrank C basic",
      imagePath: "assets/images/c_basic.jpg",
    ),
  AchievementModel(
      titleName: "Hackerrank C intermediate",
      imagePath: "assets/images/c_intermediate.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleWidget("Achievements"),
        const GlobalSizedBoxHeight(),
        CarouselSlider.builder(
          itemCount: _myAchievementList.length,
          options: CarouselOptions(
            height: 270,
            aspectRatio: 16 / 9,
            viewportFraction: 0.75,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(
              seconds: 4,
            ),
            autoPlayAnimationDuration: Duration(
              milliseconds: 900,
            ),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.25,
            scrollDirection: Axis.horizontal,
          ),
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            return AchievementCard(
              _myAchievementList[itemIndex],
            );
          },
        ),
        const GlobalSizedBoxHeight()
      ],
    );
  }
}
