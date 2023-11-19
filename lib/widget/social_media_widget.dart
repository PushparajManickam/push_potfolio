import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_potfolio/config/global_function.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';
import 'package:push_potfolio/theme/theme_manager.dart';
import 'package:push_potfolio/widget/title_widget.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDartTheme =
        Provider.of<ThemeManager>(context, listen: true).getIsDartTheme;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleWidget(
            "Social Media",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                              color:  (isDartTheme) ? MyColor.whiteColor : MyColor.blackColor,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
