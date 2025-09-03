import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/constant/constant.dart';
import 'package:push_potfolio/theme/color.dart';
import 'package:push_potfolio/widget/common_sizedbox.dart';

import 'title_widget.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyStyle.symmetricPadding,
      child: Column(
        children: [
          CommonSizedBox.h10,
          TitleWidget("About Us"),
          const GlobalSizedBoxHeight(),
          StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection('about_us')
                .doc('doc1')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    'Error loading data: ${snapshot.error}',
                    style: MyStyle.spectralFont(
                      MyConstant.smallSize,
                      Colors.red,
                      FontWeight.w400,
                    ),
                  ),
                );
              }
              
              if (!snapshot.hasData || !snapshot.data!.exists) {
                return Center(
                  child: Text(
                    'No data available',
                    style: MyStyle.spectralFont(
                      MyConstant.smallSize,
                      MyColor.blackColor,
                      FontWeight.w400,
                    ),
                  ),
                );
              }
              
              final data = snapshot.data!.data() as Map<String, dynamic>;
              
              // Extract all fields that start with 'field'
              final List<String> aboutUsData = [];
              data.forEach((key, value) {
                if (key.startsWith('field') && value != null) {
                  aboutUsData.add(value.toString());
                }
              });
              
              // Sort by field number (field1, field2, etc.)
              aboutUsData.sort();
              
              if (aboutUsData.isEmpty) {
                return Center(
                  child: Text(
                    'No about us information available',
                    style: MyStyle.spectralFont(
                      MyConstant.smallSize,
                      MyColor.blackColor,
                      FontWeight.w400,
                    ),
                  ),
                );
              }
              
              return ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: aboutUsData.length,
                itemBuilder: (context, index) => Text(
                  aboutUsData[index],
                  textAlign: TextAlign.justify,
                  style: MyStyle.spectralFont(
                    MyConstant.smallSize,
                    MyColor.blackColor,
                    FontWeight.w400,
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 4,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
