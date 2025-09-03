import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/widget/common_sizedbox.dart';

import 'skill_list_widget.dart';
import 'title_widget.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyStyle.symmetricPadding,
      child: Column(
        children: [
          CommonSizedBox.h10,
          TitleWidget("My Skill"),
          StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection('skills')
                .doc('pushparaj_skills')
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
                    'Error loading skills: ${snapshot.error}',
                    style: TextStyle(color: Colors.red),
                  ),
                );
              }
              
              if (!snapshot.hasData || !snapshot.data!.exists) {
                return const Center(
                  child: Text('No skills data available'),
                );
              }
              
              final data = snapshot.data!.data() as Map<String, dynamic>;
              
              // Extract all fields that start with 'field'
              final List<String> skillsList = [];
              data.forEach((key, value) {
                if (key.startsWith('field') && value != null) {
                  skillsList.add(value.toString());
                }
              });
              
              // Sort by field number (field1, field2, etc.)
              skillsList.sort();
              
              if (skillsList.isEmpty) {
                return const Center(
                  child: Text('No skills available'),
                );
              }
              
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: skillsList.length,
                itemBuilder: (context, index) => SkillListWidget(
                  skillsList[index],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
