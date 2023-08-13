import 'package:flutter/material.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';
import 'package:push_potfolio/widget/bio_widget.dart';
import 'package:push_potfolio/widget/profile_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var _icon = Icons.wb_sunny;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      //TODO: theme mode
                      setState(() {
                        if (_icon == Icons.wb_sunny) {
                          _icon = Icons.brightness_2;
                          // themeChange.darkTheme = true;
                        } else {
                          _icon = Icons.wb_sunny;
                          // themeChange.darkTheme = false;
                        }
                      });
                    },
                  ),
                ],
              ),
              ProfileWidget(),
              BioWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
