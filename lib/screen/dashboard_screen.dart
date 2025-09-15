import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:push_potfolio/config/my_behavior.dart';
import 'package:push_potfolio/theme/app_theme.dart';
import 'package:push_potfolio/widget/about_us_widget.dart';
import 'package:push_potfolio/widget/bio_widget.dart';
import 'package:push_potfolio/widget/common_sizedbox.dart';
import 'package:push_potfolio/widget/contact_us_widget.dart';
import 'package:push_potfolio/widget/profile_widget.dart';
import 'package:push_potfolio/widget/skill_widget.dart';
import 'package:push_potfolio/widget/social_media_widget.dart';
import 'package:push_potfolio/widget/theme_widget.dart';

class DashboardScreen extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const DashboardScreen({super.key, this.savedThemeMode});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AnimatedTheme(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      data: theme,
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: Scaffold(
          backgroundColor: colorScheme.background,
          body: SafeArea(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                // App Bar with Theme Toggle
                SliverAppBar(
                  floating: true,
                  snap: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          colorScheme.primary.withOpacity(0.1),
                          colorScheme.secondary.withOpacity(0.05),
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    // Theme Toggle Button
                    const Padding(
                      padding: EdgeInsets.only(right: AppTheme.spacingM),
                      child: ThemeWidget(),
                    ),
                  ],
                ),

                // Main Content
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppTheme.spacingM,
                    vertical: AppTheme.spacingS,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      CommonSizedBox.h20,
                      // Profile Section
                      const ProfileWidget(),

                      // Bio Section
                      const BioWidget(),

                      // About Section
                      _buildSection(
                        context,
                        child: const AboutUsWidget(),
                      ),

                      // Skills Section
                      _buildSection(
                        context,
                        child: const SkillWidget(),
                      ),

                      // Social Media Section
                      _buildSection(
                        context,
                        child: const ConnectWithMeWidget(),
                      ),

                      // Contact Section
                      _buildSection(
                        context,
                        child: const GetInTouchWidget(),
                      ),

                      // Bottom spacing
                      const SizedBox(height: AppTheme.spacingXXL),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required Widget child,
  }) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: AppTheme.spacingL),
      padding: const EdgeInsets.only(bottom: AppTheme.spacingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(AppTheme.radiusL),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.shadow.withOpacity(0.1),
                  blurRadius: AppTheme.elevationM,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppTheme.radiusL),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
