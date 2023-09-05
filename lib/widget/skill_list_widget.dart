import 'package:flutter/material.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';

class SkillListWidget extends StatelessWidget {
  const SkillListWidget(this.skillName, {super.key});
  final String? skillName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Row(children: [
        Text(
          "\u2022",
          style: TextStyle(
            fontSize: 30,
          ),
        ), //bullet text
        const GlobalSizedBoxWidth(),
        Expanded(
          child: Text(
            skillName!,
            style: MyStyle.robotoFont(
              MyConstant.largeSize,
              MyColor.blackColor,
              FontWeight.normal,
            ),
          ), //text
        )
      ]),
    );
  }
}
