// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      fullName: json['fullName'] as String?,
      password: json['password'] as String?,
      type: json['type'] as String?,
      uId: json['uId'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'password': instance.password,
      'type': instance.type,
      'uId': instance.uId,
    };
