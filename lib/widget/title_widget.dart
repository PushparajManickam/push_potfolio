import 'package:flutter/material.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';

class TitleWidget extends StatelessWidget {
  final String? titleName;
  const TitleWidget(this.titleName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const DividerWidget(),
        const GlobalSizedBoxWidth(),
        Text(titleName!,
            style: MyStyle.robotoFont(
              MyConstant.largeSize,
              MyColor.blackColor,
              FontWeight.bold,
            )),
        const GlobalSizedBoxWidth(),
        const DividerWidget(),
      ],
    );
  }
}