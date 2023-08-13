import 'package:flutter/material.dart';

import 'title_widget.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TitleWidget("Skill"),
        ],
      ),
    );
  }
}