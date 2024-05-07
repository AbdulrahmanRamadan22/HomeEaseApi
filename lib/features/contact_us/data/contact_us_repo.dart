
import 'dart:developer';

import 'package:home_ease/core/networking/remote/api_error_handler.dart';
import 'package:home_ease/core/networking/remote/api_result.dart';
import 'package:home_ease/core/networking/remote/api_service.dart';

class ContactUsRepo{

  final ApiService _apiService;
  ContactUsRepo(this._apiService);

 Future<ApiResult<dynamic>> contactUs(
     {required Map<String ,dynamic> data ,required String token}
      
      ) async {
    try {
      final response = await _apiService.contactUs(token, data);

      log(response.toString());
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}






