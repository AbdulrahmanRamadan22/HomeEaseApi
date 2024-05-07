// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:home_ease/core/networking/remote/api_constants.dart';
import 'package:home_ease/features/auth/login/data/models/login_request_body.dart';
import 'package:home_ease/features/auth/login/data/models/login_response.dart';
import 'package:home_ease/features/auth/register/data/models/register_request_body.dart';
import 'package:home_ease/features/auth/register/data/models/register_response.dart';
import 'package:home_ease/features/categorie/data/models/category_model.dart';
import 'package:home_ease/features/service/data/models/product_company.dart';
// ignore: depend_on_referenced_packages
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  @GET(ApiConstants.categories)
  Future<CategoryModel> getCategories();

   @GET(ApiConstants.getContractAllCompanies)
  Future<ProductCompanyModel> getContractAllCompanies();

   @GET(ApiConstants.getHourlyAllCompanies)
  Future<ProductCompanyModel> getHourlyAllCompanies();

  @POST(ApiConstants.contact)
  Future<dynamic> contactUs(
      @Header('Authorization') String token, @Body() Map<String, dynamic> data);
}
