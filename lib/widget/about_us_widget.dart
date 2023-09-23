import 'package:flutter/material.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';

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
          Text(MyConstant.profileDescription)
        ],
      ),
    );
  }
}
