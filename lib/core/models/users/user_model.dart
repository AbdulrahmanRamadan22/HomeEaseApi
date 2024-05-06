// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String fullName;
  String phone;
  String email;
  String? profilePhotoURL;
  String? cover;
  String type;
  String uId;
  UserModel(
      {required this.fullName,
      required this.type,
      required this.uId,
      required this.phone,
      this.profilePhotoURL,
      required this.email,
      this.cover});

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserModelFromJson(json);
}
