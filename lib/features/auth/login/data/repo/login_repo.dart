
// ignore_for_file: unused_field

import 'package:home_ease/core/networking/remote/api_error_handler.dart';
import 'package:home_ease/core/networking/remote/api_result.dart';
import 'package:home_ease/core/networking/remote/api_service.dart';
import 'package:home_ease/features/auth/login/data/models/login_request_body.dart';
import 'package:home_ease/features/auth/login/data/models/login_response.dart';

class LoginRepo {

    final ApiService _apiService;

    LoginRepo(this._apiService);
    
     Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

    


}
