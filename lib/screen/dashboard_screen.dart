import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';
import 'package:push_potfolio/theme/theme_manager.dart';
import 'package:push_potfolio/widget/about_us_widget.dart';
import 'package:push_potfolio/widget/bio_widget.dart';
import 'package:push_potfolio/widget/contact_us_widget.dart';
import 'package:push_potfolio/widget/profile_widget.dart';
import 'package:push_potfolio/widget/skill_widget.dart';
import 'package:push_potfolio/widget/social_media_widget.dart';
import 'package:push_potfolio/widget/title_widget.dart';

import '../widget/achievement_widget.dart';

class DashboardScreen extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const DashboardScreen({super.key, this.savedThemeMode});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var _icon = Icons.wb_sunny;
  @override
  Widget build(BuildContext context) {
    final isDartTheme = Provider.of<ThemeManager>(context).getIsDartTheme;
    print("isDartTheme $isDartTheme");
    return AnimatedTheme(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      data: Theme.of(context),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyStyle.constSpace(),

                Row(
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
                ),

                /// Bio
                ProfileWidget(),
                BioWidget(),

                /// About-Us
                AboutUsWidget(),

                /// Skill
                SkillWidget(),

                /// Achievement
                AchievementWidget(),

                /// Social-Media
                TitleWidget("Social Media"),
                SocialMediaWidget(),

                ///Contact-Us
                ContactUsWidget(),
                const GlobalSizedBoxHeight(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
