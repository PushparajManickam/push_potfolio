import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';
import 'package:push_potfolio/theme/theme_manager.dart';

class TitleWidget extends StatelessWidget {
  final String? titleName;
  const TitleWidget(this.titleName, {super.key});

  @override
  Widget build(BuildContext context) {
    final isDartTheme =
        Provider.of<ThemeManager>(context, listen: true).getIsDartTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
          ),
          child: const DividerWidget(),
        ),
        const GlobalSizedBoxWidth(),
        Text(
          titleName!,
          style: MyStyle.robotoFont(
            MyConstant.largeSize,
            (isDartTheme) ? MyColor.whiteColor : MyColor.blackColor,
            FontWeight.bold,
          ),
        ),
        const GlobalSizedBoxWidth(),
        Padding(
          padding: const EdgeInsets.only(
            right: 10.0,
          ),
          child: const DividerWidget(),
        ),
      ],
    );
  }
}
