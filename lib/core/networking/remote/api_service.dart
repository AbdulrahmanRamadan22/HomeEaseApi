// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:home_ease/core/networking/remote/api_constants.dart';
// ignore: depend_on_referenced_packages
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // @POST(ApiConstants.login)
  // Future<LoginResponse> login(
  //   @Body() LoginRequestBody loginRequestBody,
  // );

  // @POST(ApiConstants.register)
  // Future<SignUpResponse> signUp(
  //   @Body() SignUpRequestBody signUpRequestBody,
  // );
}
