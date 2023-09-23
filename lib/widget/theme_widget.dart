import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';
import 'package:push_potfolio/theme/theme_manager.dart';

class ThemeWidget extends StatefulWidget {
  const ThemeWidget({super.key});

  @override
  State<ThemeWidget> createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  var _icon = Icons.wb_sunny;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: Icon(
            _icon,
            color: MyColor.blackColor,
            size: MyConstant.titleSize,
          ),
          onPressed: () {
            // AdaptiveTheme.of(context).toggleThemeMode();
            //TODO: theme mode
            setState(() {
              if (_icon == Icons.wb_sunny) {
                _icon = Icons.brightness_2;
                AdaptiveTheme.of(context).setDark();
                Provider.of<ThemeManager>(context, listen: false)
                    .setIsSetDartTheme = true;
              } else {
                _icon = Icons.wb_sunny;
                AdaptiveTheme.of(context).setLight();
                Provider.of<ThemeManager>(context, listen: false)
                    .setIsSetDartTheme = false;
              }
            });
          },
        ),
      ],
    );
  }
}
