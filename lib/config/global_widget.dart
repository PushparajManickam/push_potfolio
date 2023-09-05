import 'package:flutter/material.dart';
import 'package:push_potfolio/theme/color.dart';

class GlobalSizedBoxHeight extends StatelessWidget {
  const GlobalSizedBoxHeight({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class GlobalSizedBoxWidth extends StatelessWidget {
  const GlobalSizedBoxWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 10,
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 100,
      color: MyColor.blackColor,
    );
  }
}
