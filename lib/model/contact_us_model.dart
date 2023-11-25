// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ContactUsModel {
  final String? name;
  final String? email;
  final int? phoneNumber;
  final String? message;
  ContactUsModel(
    this.name,
    this.email,
    this.phoneNumber,
    this.message,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'message': message,
    };
  }

  factory ContactUsModel.fromMap(Map<String, dynamic> map) {
    return ContactUsModel(
      map['name'] != null ? map['name'] as String : null,
      map['email'] != null ? map['email'] as String : null,
      map['phoneNumber'] != null ? map['phoneNumber'] as int : null,
      map['message'] != null ? map['message'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactUsModel.fromJson(String source) => ContactUsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
