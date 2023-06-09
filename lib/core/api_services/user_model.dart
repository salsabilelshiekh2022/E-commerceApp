import 'package:ecommerce_application/core/api_services/user_data_model.dart';

class User {
  final bool status;
  final String message;
  final UserData? data;

  User({required this.status, required this.message, this.data});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        status: json['status'],
        message: json['message'],
        data: json['data'] != null ? UserData.fromJson(json['data']) : null);
  }
}
