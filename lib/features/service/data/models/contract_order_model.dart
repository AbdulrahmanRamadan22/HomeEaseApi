




import 'package:json_annotation/json_annotation.dart';
part 'contract_order_model.g.dart';

@JsonSerializable()
class ContractOrderModel{

int? status;
String? message;

  @JsonKey(name: 'contract_order')
  ContractOrder? contractOrder;

  ContractOrderModel({   this.status, this.message,this.contractOrder});

   Map<String, dynamic> toJson()=>_$ContractOrderModelToJson(this);


   factory ContractOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ContractOrderModelFromJson(json);

}

@JsonSerializable()
class ContractOrder {

 @JsonKey(name: 'number_of_months')
  String ? numberOfMonths;
  String ? city;
  String ? address;
  String ? nationality;
  @JsonKey(name: 'company_id')
  String ? companyId;
  @JsonKey(name: 'categorie_id')
  String ? categorieId;

  DateTime  ? date;
  @JsonKey(name: 'user_id')
  String ? userId;

  String ? status;
  @JsonKey(name: 'updated_at')
  String ? updatedAt;
  @JsonKey(name: 'created_at')
  String ? createdAt;
 
  String ? id;
  ContractOrder({
    this.numberOfMonths,
    this.city,
    this.address, 
    this.nationality,
    this.companyId, 
    this.categorieId,
    this.date,
    
    this.userId,
    this.status,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

   Map<String, dynamic> toJson()=>_$ContractOrderToJson(this);



factory ContractOrder.fromJson(Map<String, dynamic> json) =>
      _$ContractOrderFromJson(json);

}















