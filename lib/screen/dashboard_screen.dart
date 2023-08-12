import 'package:flutter/material.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 350,
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Center(
                  child: Image.asset(
                    MyConstant.profileImagePath,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Text(
                      MyConstant.profileName,
                      
                      style: MyStyle.caveatFont(
                        MyConstant.maximumSize,
                        MyColor.blackColor,
                        FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
