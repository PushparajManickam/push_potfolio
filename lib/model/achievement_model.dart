// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class AchievementModel with ChangeNotifier {
  final String? titleName;
  final String? imagePath;
  AchievementModel({
    required this.titleName,
    required this.imagePath,
  });

  AchievementModel copyWith({
    String? titleName,
   String? imagePath,
  }) {
    return AchievementModel(
      titleName: titleName ?? this.titleName,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'titleName': titleName,
      'imagePath': imagePath,
    };
  }

  factory AchievementModel.fromMap(Map<String, dynamic> map) {
    return AchievementModel(
      titleName: map['titleName'] != null ? map['titleName'] as String : '',
      imagePath: map['imagePath'] != null ? map['imagePath'] as String : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AchievementModel.fromJson(String source) => AchievementModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AchievementModel(titleName: $titleName, imagePath: $imagePath)';

  @override
  bool operator ==(covariant AchievementModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.titleName == titleName &&
      other.imagePath == imagePath;
  }

  @override
  int get hashCode => titleName.hashCode ^ imagePath.hashCode;
}
