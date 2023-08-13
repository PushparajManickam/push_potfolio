import 'package:flutter/material.dart';
import 'title_widget.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TitleWidget("Contact Us"),
        ],
      ),
    );
  }
}