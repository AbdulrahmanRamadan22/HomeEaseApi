// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractOrderModel _$ContractOrderModelFromJson(Map<String, dynamic> json) =>
    ContractOrderModel(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      contractOrder: json['contract_order'] == null
          ? null
          : ContractOrder.fromJson(
              json['contract_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContractOrderModelToJson(ContractOrderModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'contract_order': instance.contractOrder,
    };

ContractOrder _$ContractOrderFromJson(Map<String, dynamic> json) =>
    ContractOrder(
      numberOfMonths: json['number_of_months'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      nationality: json['nationality'] as String?,
      companyId: json['company_id'] as String?,
      categorieId: json['categorie_id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      userId: json['user_id'] as String?,
      status: json['status'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ContractOrderToJson(ContractOrder instance) =>
    <String, dynamic>{
      'number_of_months': instance.numberOfMonths,
      'city': instance.city,
      'address': instance.address,
      'nationality': instance.nationality,
      'company_id': instance.companyId,
      'categorie_id': instance.categorieId,
      'date': instance.date?.toIso8601String(),
      'user_id': instance.userId,
      'status': instance.status,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };
