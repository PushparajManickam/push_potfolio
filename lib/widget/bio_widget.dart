import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';
import 'package:push_potfolio/widget/pdf_view_widget.dart';

class BioWidget extends StatelessWidget {
  const BioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyStyle.symmetricPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            MyConstant.profileName,
            style: MyStyle.spectralFont(
              MyConstant.maximumSize,
              MyColor.blackColor,
              FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                MyConstant.profileRole,
                style: MyStyle.caveatFont(
                  MyConstant.titleSize,
                  MyColor.blackColor,
                  FontWeight.bold,
                ),
              ),
              const GlobalSizedBoxWidth(),
              GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PDFViewWidget(),
                        ),
                      ),
                  child: SizedBox(
                      height: 40, 
                      width: 40,
                      child: Lottie.asset(MyConstant.resume_lottie)))
            ],
          ),
        ],
      ),
    );
  }
}
