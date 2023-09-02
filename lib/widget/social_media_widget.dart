import 'package:flutter/material.dart';
import 'package:push_potfolio/config/global_function.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            children: MyConstant.socialIconURL
                .asMap()
                .entries
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2,
                      vertical: 2,
                    ),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        highlightColor: MyColor.whiteColor,
                        onPressed: () => MyGlobalFunction.openUrl(
                            MyConstant.socialLinks[e.key]),
                        icon: Image.network(
                          e.value,
                          // color: MyColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
