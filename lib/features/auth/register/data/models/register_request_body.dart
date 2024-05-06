// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
   String name;
  String email;
 
  String phone;
  String password;
  @JsonKey(name: 'password_confirmation')
  String passwordConfirmation;

  RegisterRequestBody({required this.email, required this.password,required this.name,required this.passwordConfirmation,required this.phone});

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}