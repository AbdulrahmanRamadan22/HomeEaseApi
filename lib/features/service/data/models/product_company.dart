
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
part 'product_company.g.dart';

@JsonSerializable()
class ProductCompanyModel {
  int? status;
  String? message;

  @JsonKey(name:'companies')
   List<Companies>? companies;

  // bool? status;

  ProductCompanyModel({this.message, this.companies, this.status,});

  factory ProductCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCompanyModelFromJson(json);
}

@JsonSerializable()
class Companies {
   int? id;
   String? name;
   String?description;
   String?price;
   String? path;
   @JsonKey(name:'categorie_id')
  int? categorieId;
   @JsonKey(name:'user_id')
   int? userId;
   String? nationality;
   String? tybe;
   int? numbers;
   String? status;

  Companies({
    this.id,
    this.name,
    this.path,
    this.categorieId,
    this.userId,
    this.nationality,
    this.tybe,
    this.numbers,
    this.status,
    this.description,
    this.price
 
  });

  factory Companies.fromJson(Map<String, dynamic> json) =>
      _$CompaniesFromJson(json);
}