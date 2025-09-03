import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                    // Exit Button
                    // Padding(
                    //   padding: const EdgeInsets.only(right: AppTheme.spacingS),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(12),
                    //       gradient: LinearGradient(
                    //         colors: [
                    //           colorScheme.error.withOpacity(0.8),
                    //           colorScheme.error.withOpacity(0.6),
                    //         ],
                    //         begin: Alignment.topLeft,
                    //         end: Alignment.bottomRight,
                    //       ),
                    //       boxShadow: [
                    //         BoxShadow(
                    //           color: colorScheme.error.withOpacity(0.3),
                    //           blurRadius: 8,
                    //           offset: const Offset(0, 2),
                    //         ),
                    //       ],
                    //     ),
                    //     child: Material(
                    //       color: Colors.transparent,
                    //       child: InkWell(
                    //         borderRadius: BorderRadius.circular(12),
                    //         onTap: () {
                    //           showDialog(
                    //             context: context,
                    //             builder: (BuildContext context) {
                    //               return AlertDialog(
                    //                 shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(16),
                    //                 ),
                    //                 title: Row(
                    //                   children: [
                    //                     Icon(
                    //                       Icons.exit_to_app,
                    //                       color: colorScheme.error,
                    //                     ),
                    //                     const SizedBox(width: 8),
                    //                     Text(
                    //                       'Exit Application',
                    //                       style: TextStyle(
                    //                         color: colorScheme.onSurface,
                    //                         fontWeight: FontWeight.bold,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 content: Text(
                    //                   'Are you sure you want to exit the portfolio application?',
                    //                   style: TextStyle(
                    //                     color: colorScheme.onSurface.withOpacity(0.8),
                    //                   ),
                    //                 ),
                    //                 actions: [
                    //                   TextButton(
                    //                     onPressed: () => Navigator.of(context).pop(),
                    //                     child: Text(
                    //                       'Cancel',
                    //                       style: TextStyle(
                    //                         color: colorScheme.primary,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   ElevatedButton(
                    //                     onPressed: () {
                    //                       Navigator.of(context).pop();
                    //                       SystemNavigator.pop();
                    //                     },
                    //                     style: ElevatedButton.styleFrom(
                    //                       backgroundColor: colorScheme.error,
                    //                       foregroundColor: colorScheme.onError,
                    //                       shape: RoundedRectangleBorder(
                    //                         borderRadius: BorderRadius.circular(8),
                    //                       ),
                    //                     ),
                    //                     child: const Text('Exit'),
                    //                   ),
                    //                 ],
                    //               );
                    //             },
                    //           );
                    //         },
                    //         child: const Padding(
                    //           padding: EdgeInsets.all(12),
                    //           child: Icon(
                    //             Icons.power_settings_new,
                    //             color: Colors.white,
                    //             size: 20,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
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
                      CommonSizedBox.h10,
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

                      // Achievement Section (commented out but structured)
                      // _buildSection(
                      //   context,
                      //   title: 'Achievements',
                      //   child: const AchievementWidget(),
                      // ),

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
