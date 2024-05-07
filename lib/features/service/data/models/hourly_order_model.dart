




import 'package:json_annotation/json_annotation.dart';
part 'hourly_order_model.g.dart';

@JsonSerializable()
class HourlyOrderModel{

int? status;
String? message;

  @JsonKey(name: 'hourly_order')
  HourlyOrder? hourlyOrder;

  HourlyOrderModel({   this.status, this.message,this.hourlyOrder});

   Map<String, dynamic> toJson()=>_$HourlyOrderModelToJson(this);


   factory HourlyOrderModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyOrderModelFromJson(json);

}

 

@JsonSerializable()
class HourlyOrder {

 @JsonKey(name: 'Period')
String ? period;
 @JsonKey(name: 'number_of_hours')
  String ? numberOfHours;
  String ? city;
  String ? address;
  String ? nationality;
  @JsonKey(name: 'company_id')
  String ? companyId;
  @JsonKey(name: 'categorie_id')
  String ? categorieId;
  DateTime  ? date;
  String ?time;
  @JsonKey(name: 'user_id')
  String ? userId;

  String ? status;
  @JsonKey(name: 'updated_at')
  String ? updatedAt;
  @JsonKey(name: 'created_at')
  String ? createdAt;
 
  String ? id;
  HourlyOrder({
    this.numberOfHours,
    this.city,
    this.address, 
    this.nationality,
    this.companyId, 
    this.categorieId,
    this.date,
    this.time,
    this.period,
    this.userId,
    this.status,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

   Map<String, dynamic> toJson()=>_$HourlyOrderToJson(this);



factory HourlyOrder.fromJson(Map<String, dynamic> json) =>
      _$HourlyOrderFromJson(json);

}















