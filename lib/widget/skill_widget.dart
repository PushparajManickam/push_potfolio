import 'package:flutter/material.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';

import 'skill_list_widget.dart';
import 'title_widget.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyStyle.symmetricPadding,
      child: Column(
        children: [
          TitleWidget("Skill"),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: MyConstant.listOfSkill.length,
            itemBuilder: (context, index) => SkillListWidget(
              MyConstant.listOfSkill[index],
            ),
          )
        ],
      ),
    );
  }
}
