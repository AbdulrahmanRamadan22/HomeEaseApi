// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCompanyModel _$ProductCompanyModelFromJson(Map<String, dynamic> json) =>
    ProductCompanyModel(
      message: json['message'] as String?,
      companies: (json['companies'] as List<dynamic>?)
          ?.map((e) => Companies.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductCompanyModelToJson(
        ProductCompanyModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'companies': instance.companies,
    };

Companies _$CompaniesFromJson(Map<String, dynamic> json) => Companies(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      path: json['path'] as String?,
      categorieId: (json['categorie_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      nationality: json['nationality'] as String?,
      tybe: json['tybe'] as String?,
      numbers: (json['numbers'] as num?)?.toInt(),
      status: json['status'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$CompaniesToJson(Companies instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'path': instance.path,
      'categorie_id': instance.categorieId,
      'user_id': instance.userId,
      'nationality': instance.nationality,
      'tybe': instance.tybe,
      'numbers': instance.numbers,
      'status': instance.status,
    };
