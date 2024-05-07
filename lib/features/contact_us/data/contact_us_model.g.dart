// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactUsModel _$ContactUsModelFromJson(Map<String, dynamic> json) =>
    ContactUsModel(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      contact: json['Contact'] == null
          ? null
          : Contact.fromJson(json['Contact'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactUsModelToJson(ContactUsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Contact': instance.contact,
    };

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      id: (json['id'] as num?)?.toInt(),
      message: json['message'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
