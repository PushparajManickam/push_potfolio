import 'package:flutter/material.dart';
import 'package:push_potfolio/theme/color.dart';

import '../model/achievement_model.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard(this.currentAchievementModel, {super.key});
  final AchievementModel currentAchievementModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        color: MyColor.whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                currentAchievementModel.titleName!,
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.0,
                ),
                child: Image.asset(
                  currentAchievementModel.imagePath!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
