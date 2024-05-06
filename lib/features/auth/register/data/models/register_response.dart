// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  String? fullName;
  String? phone;
  String? password;
  String? type;
  String? uId;

  RegisterResponse({this.fullName, this.password, this.type, this.uId, this.phone});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
