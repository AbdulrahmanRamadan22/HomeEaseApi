// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyOrderModel _$HourlyOrderModelFromJson(Map<String, dynamic> json) =>
    HourlyOrderModel(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      hourlyOrder: json['hourly_order'] == null
          ? null
          : HourlyOrder.fromJson(json['hourly_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HourlyOrderModelToJson(HourlyOrderModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'hourly_order': instance.hourlyOrder,
    };

HourlyOrder _$HourlyOrderFromJson(Map<String, dynamic> json) => HourlyOrder(
      numberOfHours: json['number_of_hours'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      nationality: json['nationality'] as String?,
      companyId: json['company_id'] as String?,
      categorieId: json['categorie_id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      time: json['time'] as String?,
      period: json['Period'] as String?,
      userId: json['user_id'] as String?,
      status: json['status'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$HourlyOrderToJson(HourlyOrder instance) =>
    <String, dynamic>{
      'Period': instance.period,
      'number_of_hours': instance.numberOfHours,
      'city': instance.city,
      'address': instance.address,
      'nationality': instance.nationality,
      'company_id': instance.companyId,
      'categorie_id': instance.categorieId,
      'date': instance.date?.toIso8601String(),
      'time': instance.time,
      'user_id': instance.userId,
      'status': instance.status,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };
