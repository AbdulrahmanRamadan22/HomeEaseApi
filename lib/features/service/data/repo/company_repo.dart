  // Future<List<CategoryModel>> getCategories();
// ignore_for_file: unused_field

import 'dart:developer';

import 'package:home_ease/core/networking/remote/api_error_handler.dart';
import 'package:home_ease/core/networking/remote/api_result.dart';
import 'package:home_ease/core/networking/remote/api_service.dart';
import 'package:home_ease/features/service/data/models/product_company.dart';

class CompanyRepo{
  final ApiService _apiService;
  CompanyRepo(this._apiService);
  Future<ApiResult<ProductCompanyModel>> getContractAllCompanies(
   ) async {
    try {
      final response = await _apiService.getContractAllCompanies();
      log(response.toString());
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ProductCompanyModel>> getHourlyAllCompanies(
   ) async {
    try {
      final response = await _apiService.getHourlyAllCompanies();
      log(response.toString());
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }


}
