// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      fullName: json['fullName'] as String,
      type: json['type'] as String,
      uId: json['uId'] as String,
      phone: json['phone'] as String,
      profilePhotoURL: json['profilePhotoURL'] as String?,
      email: json['email'] as String,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'email': instance.email,
      'profilePhotoURL': instance.profilePhotoURL,
      'cover': instance.cover,
      'type': instance.type,
      'uId': instance.uId,
    };
