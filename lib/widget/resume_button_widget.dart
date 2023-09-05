import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';
import 'package:pdfx/pdfx.dart';
import 'package:push_potfolio/widget/pdf_view_widget.dart';

class ResumeButtonWidget extends StatefulWidget {
  const ResumeButtonWidget();
  @override
  _ResumeButtonWidgetState createState() => _ResumeButtonWidgetState();
}

class _ResumeButtonWidgetState extends State<ResumeButtonWidget>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animationController!,
        builder: (context, child) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PDFViewWidget(),
              ),
            ),
            child: Container(
              decoration: ShapeDecoration(
                color: MyColor.blackColor.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  8.0 * animationController!.value,
                ),
                child: child,
              ),
            ),
          );
        },
        child: Container(
          width: 160,
          height: 40,
          decoration: ShapeDecoration(
            color: MyColor.blackColor.withOpacity(0.9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
          child: Center(
            child: Text(
              "Resume",
              style: MyStyle.robotoFont(
                MyConstant.largeSize,
                MyColor.whiteColor,
                FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
