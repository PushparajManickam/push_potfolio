import 'dart:developer';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/config/my_behavior.dart';
import 'package:push_potfolio/widget/about_us_widget.dart';
import 'package:push_potfolio/widget/bio_widget.dart';
import 'package:push_potfolio/widget/contact_us_widget.dart';
import 'package:push_potfolio/widget/profile_widget.dart';
import 'package:push_potfolio/widget/skill_widget.dart';
import 'package:push_potfolio/widget/social_media_widget.dart';
import 'package:push_potfolio/widget/theme_widget.dart';

import '../widget/achievement_widget.dart';

class DashboardScreen extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const DashboardScreen({super.key, this.savedThemeMode});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      data: Theme.of(context),
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 14.0,
                  horizontal: 14.0,
                ),
                child: Column(
                  children: [
                    const GlobalSizedBoxHeight(),
                    const ThemeWidget(),

                    /// Bio
                    const ProfileWidget(),
                    const BioWidget(),
                    const GlobalSizedBoxHeight(),

                    /// About-Us
                    const AboutUsWidget(),
                    const GlobalSizedBoxHeight(),

                    /// Skill
                    const SkillWidget(),
                    const GlobalSizedBoxHeight(),
/*
                    /// Achievement
                    AchievementWidget(),
                    const GlobalSizedBoxHeight(),
*/
                    /// Social-Media
                    const SocialMediaWidget(),
                    const GlobalSizedBoxHeight(),

                    ///Contact-Us
                    const ContactUsWidget(),
                    const GlobalSizedBoxHeight(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
