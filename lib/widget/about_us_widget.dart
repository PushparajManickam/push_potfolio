import 'package:flutter/material.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';

import 'title_widget.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyStyle.symmetricPadding,
      child: Column(
        children: [
          TitleWidget("About Us"),
          const GlobalSizedBoxHeight(),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: MyConstant.profileDescription.length,
            itemBuilder: (context, index) => Text(
              MyConstant.profileDescription[index],
              textAlign: TextAlign.justify,
              style: MyStyle.spectralFont(
                MyConstant.smallSize,
                MyColor.blackColor,
                FontWeight.w400,
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 4,
            ),
          ),
        ],
      ),
    );
  }
}
