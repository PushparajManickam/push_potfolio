import 'package:flutter/material.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';

class BioWidget extends StatelessWidget {
  const BioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: MyStyle.symmetricPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            MyConstant.profileName,
            style: MyStyle.spectralFont(
              MyConstant.maximumSize,
              MyColor.blackColor,
              FontWeight.bold,
            ),
          ),
          Text(
            MyConstant.profileRole,
            style: MyStyle.caveatFont(
              MyConstant.titleSize,
              MyColor.blackColor,
              FontWeight.bold,
            ),
          ),
         
        ],
      ),
    );
  }
}
