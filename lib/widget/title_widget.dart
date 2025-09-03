import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      children: [
        Expanded(
          child: Container(
            height: 2,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  (isDartTheme) ? MyColor.whiteColor : MyColor.blackColor,
                ],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
        ),
        Text(
          titleName!,
          style: MyStyle.robotoFont(
            MyConstant.largeSize,
            (isDartTheme) ? MyColor.whiteColor : MyColor.blackColor,
            FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: Container(
            height: 2,
            margin: const EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  (isDartTheme) ? MyColor.whiteColor : MyColor.blackColor,
                  Colors.transparent,
                ],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
