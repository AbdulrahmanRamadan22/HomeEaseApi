

import 'package:json_annotation/json_annotation.dart';
part 'contact_us_model.g.dart';

@JsonSerializable()
class ContactUsModel{

int? status;
String? message;

  @JsonKey(name: 'Contact')
  Contact? contact;

  ContactUsModel({   this.status, this.message,this.contact});

   Map<String, dynamic> toJson()=>_$ContactUsModelToJson(this);


   factory ContactUsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactUsModelFromJson(json);

}
     

@JsonSerializable()
class Contact {
  int? id;
  String? message;
   @JsonKey(name: 'user_id')
 int? userId;

  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  Contact({
    this.id,
    this.message,
    this.userId,
    this.createdAt,
    this.updatedAt,
  });


factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

}















