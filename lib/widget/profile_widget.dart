import 'package:flutter/material.dart';
import 'package:push_potfolio/constant/constant.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      // color: MyColor.graphColor1,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Center(
        child: Image.asset(
          MyConstant.profileImagePath,
        ),
      ),
    );
  }
}
