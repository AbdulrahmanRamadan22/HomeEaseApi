// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
 

  int? status;
  String? message;
  String? token;

  @JsonKey(name: 'data')
  UserData? userData;
  // bool? status;

  RegisterResponse({this.message, this.userData, this.status, this.token});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
@JsonSerializable()
class UserData {
  int? id;
  String? name;
  String? email;
  String? phone;
  @JsonKey(name: 'email_verified_at')
  String? emailVerifiedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  UserData({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
