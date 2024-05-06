// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'login_request_body.g.dart';


@JsonSerializable()
class LoginRequestBody {
  // String? email;
  String phone;
  String password;

  LoginRequestBody({  required this.password,required this.phone});

   Map<String, dynamic> toJson()=>_$LoginRequestBodyToJson(this);
}